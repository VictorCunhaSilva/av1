OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '454476250276-nuqg0pj15jkf8g480vldi68m0ofg5l5u.apps.googleusercontent.com',
                            'YG7KRLhK9dU3cdYa3bYrmYed', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end