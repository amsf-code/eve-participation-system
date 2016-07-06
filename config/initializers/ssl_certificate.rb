# frozen_string_literal: true

# fetching the ssl/tls certificate in the rails project lib folder: 'root/lib'
# https://curl.haxx.se/docs/caextract.html
ENV['SSL_CERT_FILE'] = File.expand_path(Rails.root, __FILE__) + '/lib/cacert.pem'
