require_relative 'lib/amazon_s3'

Redmine::Plugin.register :amazon_s3 do
  name 'AmazonS3'
  version '1.0.0'
  description 'Use Amazon S3 as a storage engine for attachments (Redmine 5.1+ compatible)'
  url 'https://github.com/jhovad/redmine4_amazon_s3'
  author 'Josef Hovad'
  requires_redmine version_or_higher: '5.0.0'
end

Rails.configuration.to_prepare do
  require_relative 'lib/amazon_s3_hooks'
end
