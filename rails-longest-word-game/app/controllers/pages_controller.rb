require 'game'

class PagesController < ApplicationController

  def game
    @grid = generate_grid(10)
    @word = params[:grid]
    @start_time = Time.now
  end

  def score
    @attempt = params[:attempt]
    @grid = params[:grid].split('')
    @start_time = params[:start_time]
    @end_time = Time.now
    @result = run_game(@attempt, @grid, @start_time.to_i, @end_time.to_i)
  end


end
