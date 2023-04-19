require_relative "slideable.rb"
require_relative "piece.rb"
class Rook < Piece
    include Slideable
    # symbol method? initialize? getter?
    def moves
        
        #horizontal dirs .each, shovel that into a moves array until no longer valid

    end

    # private
    def move_dirs
        self.horizontal_dirs
    end
end

a = Rook.new("white","board",[3,3]) 
p a.move_dirs