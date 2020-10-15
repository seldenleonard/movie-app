# # Be sure to restart your server when you modify this file.

# # Avoid CORS issues when API is called from the frontend app.
# # Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# # Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   # allow do
#   #   origins 'localhost:8080', 'example.com'

#   #   resource '*',
#   #     headers: :any,
#   #     methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   # end
#     # FIRST ATTEMPT AT ENABLING CORS WHICH I FOUND ONLINE (DID NOT SEEM TO WORK):
#     # config.middleware.insert_before 0, Rack::Cors do
    
    
#     # credentials: true  
#     # allow do
#     #   origins '*'
#     #   resource '*', :headers => :any, :methods => [:get, :post, :options]
#     # end


#     module JobTracker
#   class Application < Rails::Application
#     # Initialize configuration defaults for originally generated Rails version.
#     config.load_defaults 5.1

#     # Settings in config/environments/* take precedence over those specified here.
#     # Application configuration should go into files in config/initializers
#     # -- all .rb files in that directory are automatically loaded.

#     # Only loads a smaller set of middleware suitable for API only apps.
#     # Middleware like session, flash, cookies can be added back manually.
#     # Skip views, helpers and assets when generating a new resource.
#     config.api_only = true

#     config.middleware.insert_before 0, "Rack::Cors" do
#       allow do
#         origins '*'
#         resource(
#           '*',
#           headers: :any,
#           methods: [:get, :patch, :put, :delete, :post, :options]
#           )
#       end
#     end
#   end
# end

# end

# Be sure to restart your server when you modify this file.
# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.
# Read more: https://github.com/cyu/rack-cors
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:8080', 'example.com'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end