CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = ENV['S3_BUCKET_NAME']

    config.aws_credentials = {
        access_key_id:      ENV['AWS_ACCESS_KEY_ID'],
        secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'],
        region:                 ENV['AWS_REGION'],
    }
    config.permissions = 0666
    config.cache_dir = "#{Rails.root}/tmp/"
end