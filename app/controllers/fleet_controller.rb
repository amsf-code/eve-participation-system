class FleetController < ApplicationController
  def create
    fleet = Fleet.new(fleet_params)

    if fleet.name == ''
      flash[:fleet_name_missing] = 'Fleet name is missing!'
      redirect_to root_path
    elsif fleet.fc_name == ''
      flash[:fleet_commander_name_missing] = 'Fleet commander name is missing!'
      redirect_to root_path
    elsif fleet.doctrin == ''
      flash[:doctrin_missing] = 'Doctrin in use is missing!'
      redirect_to root_path
    elsif fleet.details == ''
      flash[:details_missing] = 'Details are missing!'
      redirect_to root_path
    elsif fleet.duration == ''
      flash[:duration_missing] = 'Duration is missing!'
      redirect_to root_path
    elsif fleet.save
      redirect_to fleet_path(fleet)
    end
  end

  def show
    @fleet = Fleet.find(params[:id])
  end

  private

  def fleet_params
    params.require(:fleet).permit(:name, :fc_name, :backup_fcs, :fleet_booster, :doctrin, :details, :duration)
  end
end
