require './app'

IMGKit.configure do |config|
  config.wkhtmltoimage = (Pathname.new(settings.root).join('bin', 'wkhtmltoimage-amd64')).to_s if ENV['RACK_ENV'] == 'production'
end

run Sinatra::Application