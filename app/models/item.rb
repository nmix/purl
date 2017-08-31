class Item < ApplicationRecord
  belongs_to :bucket, counter_cache: true
  mount_uploader :file, FileUploader
end
