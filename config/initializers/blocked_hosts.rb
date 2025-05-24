# ブラウザがアプリにアクセスする際、使用できるドメイン名を制限する。
Rails.application.configure do
  config.hosts << "example.com"
  config.hosts << "baukis2.example.com"
end