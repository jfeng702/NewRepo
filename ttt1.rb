# 3x3 square where player marks a square with X, computer marks a square with Y,
# until a line is formed or all squares taken (tie condition). Whoever forms line wins.

require 'pry'

class Board
  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]

  def initialize
    @data = {}
    (1..9).each {|position| @data[position] = Square.new(' ')}
  end

  def draw
    system 'clear'
    puts
    puts "     |     |"
    puts "  #{@data[1]}  |  #{@data[2]}  |  #{@data[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@data[4]}  |  #{@data[5]}  |  #{@data[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@data[7]}  |  #{@data[8]}  |  #{@data[9]}"
    puts "     |     |"
    puts
  end

  def mark_square(position, marker)
    @data[position].mark(marker)
  end
  
  def empty_positions
    @data.select {|_,square|square.empty? }.keys
  end

  def three_in_a_row?(marker)
    WINNING_LINES.each do |line|
      return true if @data[line[0]].value == marker && @data[line[1]].value == marker && @data[line[2]].value == marker
    end
    false
  end

  def empty_squares
    @data.select {|_,square|square.empty? }.values
  end

  def filled_up?
    empty_squares.size == 0
  end

end

class Player

  attr_reader :marker, :name

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end


class Square
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end

  def mark(marker)
    @value = marker
  end

  def empty?
    @value == ' '
  end

end


class Game
  def initialize
    @board = Board.new
    @human = Player.new("Joey", "X")
    @computer = Player.new("R2D2", "O")
    @current_player = @human

  end

  def current_player_marks_square
    if @current_player == @human
      begin
        puts "Choose a square #{@board.empty_positions}"
        position = gets.chomp.to_i
      end until @board.empty_positions.include?(position)
    else
      position = @board.empty_positions.sample
    end
    @board.mark_square(position, @current_player.marker)
  end



  def alternate_player
    if @current_player == @human
      @current_player = @computer
    else
      @current_player = @human
    end    
  end


 def current_player_wins?
    @board.three_in_a_row?(@current_player.marker)
  end

  def winning_action

  end

  def play
    @board.draw
    

    loop do  
      current_player_marks_square
      @board.draw
      if @board.three_in_a_row?(@current_player.marker)
        puts "#{@current_player.name} wins"
        break
      elsif @board.filled_up?
        puts "Tie game"
        break
      end
      alternate_player
    end
    puts "Goodbye"
  end
end



Game.new.play

# Check if opportunity to win is there, if so then take it.
# Check if 2 out of 3 of the winning lines of human have been taken, and select the 3rd.