# encoding: utf-8

module Irrgarten
    MAX_WEAPONS = 2
    MAX_SHIELDS = 3
    INITIAL_HEALTH = 10
    HITS2LOSE = 3

    class Player
        def initialize(number, intelligence, strength)
            @number = number
            @name = "Player #" + number.to_s()
            @intelligence = intelligence
            @strength = strength
            @health = INITIAL_HEALTH
            @row = -1
            @col = -1
            @consecutive_hits = 0
            @weapons = []
            @shields = []
        end

        def resurrect
            @weapons = []
            @shields = []
            @health = INITIAL_HEALTH
            @consecutive_hits = 0
        end

        def get_row
            @row
        end

        def get_col
            @col
        end
            
        def get_number
            @number
        end

        def set_pos(row, col)
            @row = row
            @col = col
        end
        
        def dead
            @health <= 0
        end
        
        def move(direction, validMoves)
            #TODO: Complete it, but not in the second practice
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

        def attack
            @strength + sum_weapons
        end

        def defend(received_attack)
            #TODO: From docs: Este método delega su funcionalidad en el método manageHit
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

        def receive_reward
            #TODO: Complete it, but not in the second practice
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

            @number = number
            @name = "Player #" + number.to_s()
            @intelligence = intelligence
            @strength = strength
            @health = INITIAL_HEALTH
            @row = -1
            @col = -1
            @consecutive_hits = 0
            @weapons = []
            @shields = []

        def to_s
            "Player #{@name}:\n" +
            "  Intelligence: #{@intelligence}\n" +
            "  Strength: #{@strength}\n" +
            "  Health: #{@health}\n" +
            "  Position: (#{@row}, #{@col})\n" +
            "  Consecutive Hits: #{@consecutive_hits}\n" +
            "  Weapons: #{@weapons}\n" +
            "  Shields: #{@shields}\n" +
        end

        def receive_weapon(weapon)
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

        def receive_shield(s)
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

        def new_weapon
            weapon_power = Dice.weapon_power
            weapon_uses = Dice.uses_left
            Weapon.new(weapon_power, weapon_uses)
        end

        def new_shield
            shield_power = Dice.shield_power
            shield_uses = Dice.uses_left
            Shield.new(shield_power, shield_uses)
        end

        def sum_weapons
            res = 0
            @weapons.each{|x| res += x.attack}
            res
        end

        def sum_shields
            res = 0
            @shields.each{|x| res += x.protect}
            res
        end

        def defensive_energy
            @intelligence + sum_shields
        end

        def manage_hit(received_attack)
            #TODO: Complete it, but not in the second practice
            throw NotImplementedError.new("This method will be implemented in the next practice")
        end

        def reset_hits
            @consecutive_hits = 0
        end

        def got_wounded
            @health -= 1
        end

        def inc_consecutive_hits
            @consecutive_hits += 1
        end
    end
end
