# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Wec2::Application.initialize!
mailchimp = Gibbon::API.new("7c304b2da2bdb8123d4256a5c62d1812-us8")