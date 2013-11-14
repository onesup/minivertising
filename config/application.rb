require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Minivertising
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib/)
    config.assets.enabled = true
    config.time_zone = 'Asia/Seoul'
    config.assets.precompile += ['application.js', 'application.css', 'admin.js', 'admin.css']
  end
end
