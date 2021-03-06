require 'rubygems'
require 'bundler'
require 'version'
Bundler.setup
Bundler.require


def settings
  SexySettings::Base.instance()
end

SexySettings.configure do |config|
  config.path_to_default_settings = File.expand_path("config.yaml", File.join(File.dirname(__FILE__), 'config')) # 'default.yml' by default
  config.path_to_custom_settings = File.expand_path("overwritten.yaml", File.join(File.dirname(__FILE__), 'config')) # 'custom.yml' by default
  config.path_to_project = File.dirname(__FILE__) # '.' by default
  config.env_variable_with_options = 'OPTIONS' # 'OPTS' by default
  cmd_line_option_delimiter = '$$$' # ',' by default
end

puts settings.foo1

