OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '683916444977-invpokuos2rjtd660r74ntvfkdoag8l9.apps.googleusercontent.com', 'bDsSy-I5u-a92-pEbhy6QMe0', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end