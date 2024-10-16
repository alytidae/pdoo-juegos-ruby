# encoding: utf-8
module Irrgarten
	class Monster
		INITIAL_HEALTH = 5
		@uninitialized_pos = -1
		def initialize(name, intelligence, strength)
			@name = name
			@intelligence = intelligence
			@strength = strength
			@health = INITIAL_HEALTH
			@row, @col = @uninitialized_pos, @uninitialized_pos
		end
		
		def uninitialized_pos
			uninitialized_pos
		end
		
		def dead
			return (@health == 0)
		end
		
		def attack
			Dice.intensity(@strength)
		end
		
		def defend(received_attack)
			#to be completed later
		end
		
		def set_pos(row, col)
			@row, @col = row, col
		end
		
		def got_wounded
			@health -= 1
		end
		
		def to_s
			"Monster #{@name} (health: #{@health}, intelligence: #{@intelligence}, strength: #{@strength}, pos: (#{@row}, #{@col}))"
		end
		
		private :got_wounded
	end
end
