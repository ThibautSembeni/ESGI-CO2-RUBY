class HomeController < ApplicationController
  def index
  end
  
  def distance
    @distance = params[:distance].to_i
    @type = params[:type]
    @car = 1.93
    @train = 0.5
    @bus = 1.03
    # if type = car , then @co2 = @distance * 0.62
    # if type = train , then @co2 = @distance * 0.42
    # if type = bus , then @co2 = @distance * 0.32
    if @type == 'car'
      @co2 = (@distance * @car)
    elsif @type == 'train'
      @co2 = (@distance * @train)
    elsif @type == 'bus'
      @co2 = (@distance * @bus)
    end
    puts  @co2
    puts @status_msg
    render 'index'
  end

  
  

end