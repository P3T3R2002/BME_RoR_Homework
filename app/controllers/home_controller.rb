class HomeController < ApplicationController
  include ActionView::Helpers::NumberHelper

  def index
  end

  def references
    @references_by_year = Reference.order(year: :desc).group_by(&:year)
    @drillings_by_year = Drilling.order(year: :desc).group_by(&:year)
  end

  def authorization
    @link_1 = Link.find(9)
  end

  def watering_well
    @link_1 = Link.find(10)
  end
  def VH_auth
    @link_1 = Link.find(11)
    @link_2 = Link.find(12)
  end

  def price_calculator
    @num2_options = [["--0--", ""], 160, 200] 
  end

  def calculate_price
    if params[:num2].to_i == 160
      per_m = 22000
    elsif params[:num2].to_i == 200
      per_m = 24000
    else
      flash[:notice] = "Incorrect diameter!"
      redirect_to home_price_calculator_path
    end
    flash[:notice] = "Price calculated: #{number_with_delimiter(params[:num1].to_i * per_m * params[:num3].to_i)}"
    redirect_to home_price_calculator_path
  end
end
