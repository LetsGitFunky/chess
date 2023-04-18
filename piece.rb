class Piece
    attr_reader :name
    def initialize(name)
        @name = name
    end
    def inspect
        {"name" => @name}.inspect
    end
end
