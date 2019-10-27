require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    config.generators do |g|
      g.assets false
      g.helper false
    end
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    config.active_record.default_timezone = :local
  end
end