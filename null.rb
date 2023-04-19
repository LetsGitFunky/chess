require "singleton"

class Null < Piece
    include Singleton

    attr_reader :color, :symbol

    def initialize
        @color = :Null
        @symbol = "🨠"
    end
    # symbol method? initialize? getter?

    def moves

    end
end
