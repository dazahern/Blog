class Post < ActiveRecord::Base
	has_many :comments

	validates :title, presence: true
	validates :body, presence: true

	def self.from_param(param)
		where(author: NameCase(param))
	end

	def published?
		publication.present? and url.present? and published_at.present?
	end
end

