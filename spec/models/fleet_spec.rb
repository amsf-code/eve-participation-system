# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Fleet, type: :model do
  describe '#participating?' do
    subject { FactoryGirl.build_stubbed(:fleet) }

    context 'when given eve_charid is already participating' do
      before { FactoryGirl.create(:participation, fleet: subject, eve_charid: 1) }

      it 'returns true' do
        expect(subject.participating?(1)).to be true
      end
    end

    context 'when given eve_charid is not already participating' do
      it 'returns false' do
        expect(subject.participating?(1)).to be false
      end
    end
  end

  describe '#expired?' do
    context 'when created more than 20 minutes ago' do
      subject { FactoryGirl.build_stubbed(:fleet, created_at: 21.minutes.ago).expired? }

      it { is_expected.to be true }
    end

    context 'when created 20 minutes ago' do
      subject { FactoryGirl.build_stubbed(:fleet, created_at: 20.minutes.ago).expired? }

      it { is_expected.to be false }
    end
    
    context 'when created less than 20 minutes ago' do
      subject { FactoryGirl.build_stubbed(:fleet, created_at: 19.minutes.ago).expired? }

      it { is_expected.to be false }
    end
  end
end
