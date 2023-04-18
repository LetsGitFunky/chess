class Board
    def initialize
        @rows = Array.new(8) { Array.new(8) }
    end

    def [](pos)

    end

    def []=(pos, val)

    end

    def move_piece(start_pos, end_pos)

    end
end

# @rows[0]
# @rows[1] all pawns
# @rows[6] all pawns
# @rows[7]

# rooks = [0][0]; [0][7]; [7][0]; [7][7]
# knights = [0][1]; [0][6]; [1][7]; [6][7]
# bishops = [0][2]; [0][5], [2][7]; [5][7]
