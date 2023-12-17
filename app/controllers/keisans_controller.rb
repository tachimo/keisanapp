class KeisansController < ApplicationController

  def index
  end

  def new
  end

  def create
    @calculation = Calculation.new(calculation_params)
    @calculation.save
    redirect_to keisan_path(@calculation)
  end

  def show
    @calculation = Calculation.find(params[:id])
    @number1 = @calculation["number1"]
    @number2 = @calculation["number2"]
    @tashizan = @number1 + @number2
    @hikizan = @number1 - @number2
    @kakezan = @number1 * @number2
    @warizan = @number1 / @number2
  end

  private

  def calculation_params
    params.require(:keisan).permit(:number1, :number2)
  end  

end
