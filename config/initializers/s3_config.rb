if Rails.env == "production" 
  S3_CREDENTIALS = { :access_key_id => ENV['AKIAICY23VYZ4LZ52DSA'], :secret_access_key => ENV['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'], :bucket => "photos.static.danmcleandesign"} 
 else 
  S3_CREDENTIALS = Rails.root.join("config/s3.yml")
end