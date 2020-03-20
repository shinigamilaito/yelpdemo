CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     'xxx',#Rails.application.secrets[:aws_access_key_id],
      aws_secret_access_key: 'yyy'#Rails.application.secrets[:aws_secret_access_key]
  }
  config.fog_directory  = 'yelpdemo'#Rails.application.secrets[:fog_directory]
end