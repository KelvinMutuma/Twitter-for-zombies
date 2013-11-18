class Role < ActiveRecord::Base
	has_many :assignments, class_name: "Assignments"
	has_many :zombies, through: :assignments
end
