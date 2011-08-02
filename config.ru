# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

Rack::Mime::MIME_TYPES.merge!({
  '.application' => "application/x-ms-application",
  '.manifest' => "application/x-ms-manifest",
  '.deploy' => 'application/octet-stream',
  '.msu' => 'application/octet-stream',
  '.msp' => 'application/octet-stream'
})

run HerokuClickOnceTest::Application
