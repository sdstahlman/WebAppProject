OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '164601021912-g11129k7uq25i77qp6drd9i6nldvhl1o.apps.googleusercontent.com', 'Ooy2kyoZqwNe4FMQ9kKyIOFH', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end