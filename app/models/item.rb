class Item < ApplicationRecord
  belongs_to :bucket
  mount_uploader :file, FileUploader
end
