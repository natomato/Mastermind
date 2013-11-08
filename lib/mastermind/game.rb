module Mastermind
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret) 
      @secret = secret
      @output.puts 'Welcome to Mastermind!'
      @output.puts 'Enter guess:'
    end

    # instead of two loops, can we just sort the output?
    def guess(guess)
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index) 
          mark << '+'
        end
      end
      (0..3).each do |index|
        if number_match?(guess, index) 
          mark << '-'
        end
      end
      @output.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && !exact_match?(guess, index)
    end

  end
end
