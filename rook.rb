require_relative "slideable.rb"
require_relative "piece.rb"
# require_relative "board.rb"
class Rook < Piece
    include Slideable
    # symbol method? initialize? getter?
    def moves
        moves = []
        #horizontal dirs .each, shovel that into a moves array until no longer valid
        move_dirs.each do |slide|
            dx, dy = slide
            moves << move_in_dir(dx, dy)
        end
        moves
    end

    def move_in_dir(dx, dy)
        one_dir = []
        base = self.pos
        loop do
            piece_x, piece_y = base
            step = [(dx + piece_x), (dy + piece_y)]
            break if !board.valid_pos?(step)
            one_dir << step
            base = step
        end
        one_dir
    end

    # private
    def move_dirs
        self.horizontal_dirs
    end
end

# a = Rook.new("white", b, [3,3])
# p a.move_dirs
