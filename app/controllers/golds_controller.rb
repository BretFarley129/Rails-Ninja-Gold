class GoldsController < ApplicationController
  def index
    session[:history] ||=[]
    session[:gold] ||=0
    @gold = session[:gold]
    @history = session[:history]
  end
  def farm
    amt = 10 + rand(11)
    session[:gold] += amt
    time = Time.new
    if amt < 0
      col = "red"
      message = "Went into a casino and lost #{amt} gold... Ouch (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    else
      col = "green"
      message = "Earned #{amt} golds from the farm! (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    end
    record = {message: message, color: col}
    session[:history] << record
    redirect_to '/'
  end
  def house
    amt = 2 + rand(4)
    session[:gold] += amt
    time = Time.new
    if amt < 0
      col = "red"
      message = "Went into a casino and lost #{amt} gold... Ouch (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    else
      col = "green"
      message = "Earned #{amt} golds from the house! (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    end
    record = {message: message, color: col}
    session[:history] << record
    redirect_to '/'
  end
  def cave
    amt = 5 + rand(6)
    session[:gold] += amt
    time = Time.new
    if amt < 0
      col = "red"
      message = "Went into a casino and lost #{amt} gold... Ouch (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    else
      col = "green"
      message = "Earned #{amt} golds from the cave! (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    end
    record = {message: message, color: col}
    session[:history] << record
    redirect_to '/'
  end
  def casino
    amt = rand(101) -50
    session[:gold] += amt
    time = Time.new
    if amt < 0
      col = "red"
      message = "Went into a casino and lost #{amt} gold... Ouch (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    else
      col = "green"
      message = "Earned #{amt} golds from the casino! (#{time.strftime('%Y/%m/%d, %l:%M %p')})"
      puts message
    end
    record = {message: message, color: col}
    session[:history] << record
    redirect_to '/'
  end
  def reset
    reset_session
    redirect_to '/'
  end
end
