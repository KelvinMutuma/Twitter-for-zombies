class RottingZombiesController < ApplicationController

	def index
		@rotting_zombies = Zombie.rotting.limit(5)
	end
end
