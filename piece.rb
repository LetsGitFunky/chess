class Piece
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s

    end

    def empty?

    end

    def valid_move?

    end

    def pos=(val)

    end

    def Symbol

    end

    def inspect
        {"color" => @color, "board" => @board, "pos" => @pos}.inspect
    end

    private
    
    def move_into_check?(end_pos)

    end

end
