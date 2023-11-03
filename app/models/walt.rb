class Walt < ApplicationRecord
    mount_uploader :image, ImageUploader
  has_many :walt_tag_relations, dependent: :destroy
  has_many :tags, through: :walt_tag_relations, dependent: :destroy
end
