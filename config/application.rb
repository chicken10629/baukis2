require_relative "boot"

require "rails/all"

# Railsアプリ全体に共通する基本設定を定義。
# 開発・本番といった環境に依存しない設定。
# よく使うのは１．タイムゾーン　２．デフォの言語設定　３．rails gで自動的に作られるhelperなどができないように設定
# ４．カスタム
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Baukis2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.time_zone ="Tokyo"
    config.i18n.load.load_path += Dir[Rails.root.join("config","locales","**","*.{rb,yml}").to_s]
    config.i18n.default_locale = :ja

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
