# encoding: utf-8

require "./irrgarten/irrgarten"
require "./controller/controller"
require "./ui/textUI.rb"

include Irrgarten
include UI
include Control

n_players = 1
if ARGV.length == 0
    n_players = 1;            
else
    n_players = ARGV[0].to_i
end

ui = TextUI.new()
game = Game.new(n_players)
ctrlr = Controller.new(game, ui);
ctrlr.play()




