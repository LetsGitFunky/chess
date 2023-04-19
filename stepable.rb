module Stepable
    KING_DIRS = [[-1,0],[0,1],[1,0],[0,-1],[-1,1],[1,1],[1,-1],[-1,-1]]
    KNIGHT_MOVES = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[-1,-2],[1,-2],[-1,2]]

    def king_dirs
        KING_DIRS
    end

    def knight_moves
        KNIGHT_MOVES
    end

    def moves
        moves = []
        move_diffs.each do |step|
            dx, dy = step
            piece_x, piece_y = self.pos
            next_step = [(dx + piece_x), (dy + piece_y)]
            moves << next_step if board.valid_pos?(next_step)
        end
        moves
    end


    private

    def move_diffs
        KING_DIRS
    end
end
