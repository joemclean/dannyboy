# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     # Configuration for Amazon S3 should be made available through an Environment variable.
#     # For local installations, export the env variable through the shell OR
#     # if using Passenger, set an Apache environment variable.
#     #
#     # In Heroku, follow http://devcenter.heroku.com/articles/config-vars
#     #
#     # $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ S3_BUCKET_NAME=s3_bucket/folder
 
#     # Configuration for Amazon S3
#     :provider              => 'AWS',
#     :aws_access_key_id     => ENV['S3_KEY'],
#     :aws_secret_access_key => ENV['S3_SECRET'],
#     :region                => ENV['S3_REGION']
#   }
 
#   config.storage = :fog

#   config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
 
#   config.fog_directory    = ENV['S3_BUCKET_NAME']
#   config.s3_access_policy = :public_read                          # Generate http:// urls. Defaults to :authenticated_read (https://)
#   config.fog_host         = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}"
# end

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAICY23VYZ4LZ52DSA',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_directory  = 'photos.static.danmcleandesign'                     # required
  #config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end