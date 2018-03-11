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
        redirect_to :root
      else
         render action: :new, alert: "入力情報をご確認下さい"
      end
    end

  private
  def form_params
    params.require(:home).permit(:name, :email, :telephone, :title, :message)
  end
end
