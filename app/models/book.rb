class Book < ApplicationRecord
  belongs_to :user
  mount_uploader :src, SrcUploader
end
