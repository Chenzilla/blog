class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(user_params)
    if @subscriber.save
      flash[:success] = "Thanks for subscribing!"
      redirect_to root_path
    else
      render 'new'
    end
  end
  private

    def user_params
      params.require(:subscriber).permit(:email)
    end
  end

