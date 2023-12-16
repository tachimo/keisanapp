class KeisansController < ApplicationController

  def index
  end

  def new
  end

  def create
    @calculation = Calculation.new(calculation_params)
    @calculation.save
    redirect_to keisans_path(@calculation)
  end

  def show
    @calculation = Calculation.find(params[:id])  @number1 = @keisan["number1"]
    @number2 = @keisan["number2"]
    @tashizan = @number1 + @number2
    @hikizan = @number1 - @number2
    @kakezan = @number1 * @number2
    @warizan = @number1 / @number2
  end

  private

  def calculation_params
    params.require(:calculation).permit(:number1. :number2)
  end  

end
