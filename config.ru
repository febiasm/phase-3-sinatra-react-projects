require_relative "./config/environment"
require 'rack/cors'

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController


use Rack::Cors do
  allow do
    origins 'http://localhost:3000' # Replace with the URL of your frontend application
    resource '*', headers: :any, methods: [:get, :post, :options]
  end
end

# Your application code goes here
run MyApp
