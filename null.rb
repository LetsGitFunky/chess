require "singleton"

class Null < Piece
    include Singleton

    attr_reader :color, :symbol

    def initialize
        @color = #"black" || "white"
        @symbol = "🨠"
    end
    # symbol method? initialize? getter?

    def moves

    end
end
