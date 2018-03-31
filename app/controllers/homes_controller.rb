class HomesController < ApplicationController

  def index
  end

  def recruit
  end

  def company
  end

  def about
  end

  def infomation
  end

  def idea
  end

  def new # contancになる
    @form = Home.new
  end

  def create
    @form = Home.new(form_params)
      if @form.save
        FormMailer.received_email(@form).deliver
        redirect_to :root
      else
        flash.now[:alert] = '入力不足がございます。ご確認ください'
         render action: :new
      end
    end

  private
  def form_params
    params.require(:home).permit(:name, :email, :telephone, :title, :message, :company, :postnum, :address)
  end
end
