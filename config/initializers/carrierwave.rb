CarrierWave.configure do |config|
    config.storage    = :aws
    config.aws_bucket = Rails.application.credentials.aws[:bucket_name]

    config.aws_credentials = {
        access_key_id:      Rails.application.credentials.aws[:access_key_id],
        secret_access_key:  Rails.application.credentials.aws[:secret_access_key],
        region:             Rails.application.credentials.aws[:region],
    }
    config.permissions = 0666
    config.cache_dir = "#{Rails.root}/tmp/"
end