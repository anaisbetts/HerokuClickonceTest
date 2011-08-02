# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

Rack::Mime::MIME_TYPES.fetch('.application', "application/x-ms-application")
Rack::Mime::MIME_TYPES.fetch('.manifest', "application/x-ms-manifest")
Rack::Mime::MIME_TYPES.fetch('.deploy', 'application/octet-stream')
Rack::Mime::MIME_TYPES.fetch('.msu', 'application/octet-stream')
Rack::Mime::MIME_TYPES.fetch('.msp', 'application/octet-stream')

run HerokuClickOnceTest::Application
