class Potin < ApplicationRecord
	belongs_to :user
	has_many :tags, through: :taggossips
	validates :title,
	presence: true,
	length: { in: 2..14 }
	validates :content,
	presence: true
end
