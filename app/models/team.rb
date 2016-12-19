class Team

	attr_accessor :name, :motto

	@@all = []

	def add_member(member)
		@@all << member
	end

	def print_team
		@@all.each do |member|
		end
	end


end