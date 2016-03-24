class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction
    puts "What is the instruction?"
    instruction = gets
    instruction.chars = instruction_row
    instruction.chars.each do
      if instruction_row.upcase == "L" || instruction_row.upcase == "R"
        turn(instruction)
      elsif instruction_row.upcase == "M"
        move
      else
        puts "wrong instruction"
      end
    end


  end

  def move
    if direction == "S"
      self.y_coordinate = (y_coordinate - 1) # @y_coordinate is a variable, y_coordinate is a method
    elsif direction == "N"
      self.y_coordinate = (y_coordinate + 1)
    elsif direction == "W"
      self.x_coordinate = (x_coordinate - 1)
    else
      self.x_coordinate = (x_coordinate - 1)
    end
  end

  def turn(turn_direction)
    if turn_direction == "L"
      if self.direction == "N"
        self.direction == "W"
      elsif self.direction == "W"
        self.direction == "S"
      elsif self.direction == "S"
        self.direction == "E"
      else
        self.direction == "N"
      end
    else
      if self.direction == "N"
        self.direction == "E"
      elsif self.direction == "E"
        self.direction == "S"
      elsif self.direction == "S"
        self.direction == "W"
      else
        self.direction == "N"
      end
    end
  end
end
