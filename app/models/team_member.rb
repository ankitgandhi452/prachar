class TeamMember
	include Mongoid::Document
	include Mongoid::Timestamps

	field :name, type: String
	field :designation, type: String

end