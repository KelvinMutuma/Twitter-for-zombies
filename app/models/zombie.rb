class Zombie < ActiveRecord::Base

	after_save :decomp_change_notification, if: :decomp_changed?
	has_one :brain, dependent: :destroy
	has_many :assignments, class_name: "Assignments"
	has_many :tweets
	has_many :roles, through: :assignments
	before_save :decomposition_state


	scope :rotting, -> {where(decomp_state: "rotting")}
	scope :fresh, -> {where("age < 20")}
	scope :recent, -> {where("created_at desc").limit(3)}


	def decomposition_state
		self.decomp_state = "rotting" if age > 20 && age < 25 #reading variables doesn't need self
	end
	private
	def decomp_change_notification
		ZombieMailer.decomp_change.self.deliver
	end
end
