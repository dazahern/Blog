class Post < ActiveRecord::Base
	has_many :comments

	validates :title, presence: true
	validates :body, presence: true

	def published?
		publication.present? and url.present? and published_at.present?
	end
end

