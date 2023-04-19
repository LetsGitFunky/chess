class Pawn < Piece
    WHITE_PAWN_DIRS = [-1,0]
    WHITE_CAPTURE = [[-1,1],[-1,-1]] #need to check if pos has opposite color piece
    WHITE_FIRST = [-2,0]
    BLACK_CAPTURE = [[1,1],[1,-1]]
    BLACK_PAWN_DIRS = [1,0]
    BLACK_FIRST = [2,0]
    
    attr_reader :first_move
    def initialize(color,board,pos)
        super(color,board,pos)
        @first_move = true
    end

    def symbol
        "♙"
    end
    def forward_dir
        self.color == white ? -1 : 1
    end

    def forward_steps
        moves = []
        x,y = self.pos
        @first_move ? 
        moves

    end
    def capture
        #self.board[i][j].color != self.color    how we check opposite piece
    end

    def moves
        moves = []
   
    end
    private
    def forward_dirs
        dirs =[]
        #if pawn.color == white , then we use white_pawn_dirs
        #else , black_pawn_dirs
        #capture, check if on the diagonal, there is an opposite color

        #if first_move == true, bl[2,0]   ,white [-2,0]
        dirs
    end
end

# self.color == white ? moves << [-1,0] : moves << [1,0]
# self.first_move && self.color == white ? moves << [-2,0] : moves << [2,0]    




# white  [-1,0]   attack [-1,-1] [-1,1]  1st [-2,0]
# blk [1,0]       attack [1,-1] [1,1]   1st [2,0]





