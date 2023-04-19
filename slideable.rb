module Slideable
    HORIZONTAL_DIRS = [[-1,0],[0,1],[1,0],[0,-1]]
    DIAGONAL_DIRS = [[-1,1],[1,1],[1,-1],[-1,-1]]

    def horizontal_dirs
       return HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
         moves = []
        #horizontal dirs .each, shovel that into a moves array until no longer valid
        move_dirs.each do |slide|
            dx, dy = slide
            moves << move_in_dir(dx, dy)
        end
         # might have to flatten in future,
        moves
    end
    
    private
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
end
