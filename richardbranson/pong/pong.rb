require 'rubygems'
require 'gosu'

class Ball
	attr_reader :x, :y, :w, :h
	def initialize(the_window)
		@x = 200
		@y = 500
		@vx = 5
		@vy = 5
		@w = 40
		@h = 40
		@image = Gosu::Image.new(the_window, "ball.png", false)
	end
	def reverse
		@vx = -1 * @vx
	end
	def draw
		@image.draw(@x, @y, 1)
	end
	def move
		@x = @x + @vx
		@y = @y + @vy
		if 	@y > 560
			@vy = -5
		end
		if 	@x > 760
			@vx = -5
		end
		if 	@y < 0
			@vy = 5
		end
		if 	@x < 0
			@vx = 5
		end
	end
end

class Paddle
	attr_reader :x, :y, :w, :h
	def initialize(the_window, xpos)
		@x =xpos
		@y = 300
		@w = 10
		@h = 60
		@image = Gosu::Image.new(the_window, "paddle.png", false)
	end
	def move_up
		if 	@y > 0
			@y = @y - 4
		end
	end
	def move_down
		if @y < 540
			@y = @y + 4
		end
	end
	def draw
		@image.draw(@x, @y, 1)
	end
end
class Score
	def initialize(the_window, xpos)
		@value = 0
		@can_change = true
		@x = xpos
		@y = 20
		@font = Gosu::Font.new(the_window, 'System', 30)
	end
	def draw
		@font.draw("#{@value}", @x, @y, 1)
	end
	def increase
		@value = @value + 1
		@can_change = false
	end
	def can_increase?
		@can_change
	end
	def turn_on_scoring
		@can_change = true
	end
end

class GameWindow < Gosu::Window
	def initialize
		super 800,600, false
		self.caption = "Pong Game"
		@ball = Ball.new(self)
		@left_paddle = Paddle.new(self, 20)
		@right_paddle = Paddle.new(self, 780)
		@left_score = Score.new(self, 20)
		@right_score = Score.new(self, 760)
	end
	def are_touching?(obj1, obj2) #obj1 and obj2 are rectangular and have x,y,w and h methods that are "readers" for these values.
		obj1.x > obj2.x - obj1.w and obj1.x < obj2.x + obj2.w and obj1.y > obj2.y - obj1.h and obj1.y < obj2.y + obj2.h
	end
	def update
		@ball.move
		#if I'm pressing the W key, move the left paddle up.
		if button_down?(Gosu::KbQ)
			@left_paddle.move_up
		end
		if button_down?(Gosu::KbZ)
			@left_paddle.move_down
		end
		if 	button_down?(Gosu::KbUp)
			@right_paddle.move_up
		end
		if 	button_down?(Gosu::KbDown)
			@right_paddle.move_down
		end
		if 	are_touching?(@ball, @left_paddle)
			@ball.reverse
		end
		if 	are_touching?(@ball, @right_paddle)
			@ball.reverse
		end
		if 	@ball.x < 0 and @right_score.can_increase?
			@right_score.increase
		end
		if 	@ball.x > 760 and @left_score.can_increase?
			@left_score.increase
		end
		if @ball.x > 400 and @ball.x < 410
			@left_score.turn_on_scoring
			@right_score.turn_on_scoring
		end
	end
	def draw
		@ball.draw
		@left_paddle.draw
		@right_paddle.draw
		@left_score.draw
		@right_score.draw
	end
end

window = GameWindow.new
window.show