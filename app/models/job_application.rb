class JobApplication
	include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip

	field :name, type: String
	field :email, type: String
	field :subject, type: String
	field :message, type: String

	has_mongoid_attached_file :resume
	validates_attachment_content_type :resume, content_type: ["application/pdf"]

	validates :name, :presence => true
	validates :email, :presence => true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
	validates :subject, :presence => true
	validates :message, :presence => true
end