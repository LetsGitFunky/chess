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
        
    end

    private

    # don't need move_dirs in module, just there for error handling
    # def move_dirs
    # end

    # def grow_unblocked_in_dir(dx, dy)

        #horizontal dirs .each, shovel that into a moves array until no longer valid
    # end
end
