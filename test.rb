
class Rover
  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def move
    if @direction == "S"
      self.y_coordinate = (y_coordinate - 1) # @y_coordinate is a variable, y_coordinate is a method
    elsif @direction == "N"
      self.y_coordinate = (y_coordinate + 1)
    elsif @direction == "W"
      self.x_coordinate = (x_coordinate - 1)
    else
      self.x_coordinate = (x_coordinate - 1)
    end
  end

  def turn(turn_direction)
    if turn_direction == "L"
      if self.direction == "N"
        self.direction = "W"
      elsif self.direction == "W"
        self.direction = "S"
      elsif self.direction == "S"
        self.direction = "E"
      else
        self.direction = "N"
      end
    elsif turn_direction == "R"
      if self.direction == "N"
        self.direction = "E"
      elsif self.direction == "E"
        self.direction = "S"
      elsif self.direction == "S"
        self.direction = "W"
      else
        self.direction = "N"
      end
    end
  end

  def read_instruction
    puts "What is the instruction?"
    instruction = gets.chomp
    instruction.chars.each do |order|
      if order.upcase == "L" || order.upcase == "R"
        turn(order.upcase)
      elsif order.upcase == "M"
        move
      else
        puts "wrong instruction"
      end
    end
  end

  def current_position
  #self.current_position
    puts "#{self.x_coordinate}, #{self.y_coordinate}, #{self.direction}"
  end
end


#rover_1.current_position

rover_1 = Rover.new(0,0,"N")

rover_1.read_instruction
# ask for location of first rover
# initialize first rover
# ask for instructions for first rover
rover_1.current_position
# run instructions for first rover
# print position of first rover
# ask for location of second rover
# initialize second rover
# ask for instructions for second rover
# run instructions for second rover
# print position of second rover
