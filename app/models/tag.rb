class Tag < ApplicationRecord
    validates :name, presence: true
  has_many :walt_tag_relations, dependent: :destroy
  has_many :walts, through: :walt_tag_relations, dependent: :destroy
end
