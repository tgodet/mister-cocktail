class DosesController < ApplicationController

  before_action :find_cocktail, except: :destroy

  def new
   @dose = Dose.new()
  end

  def create
    @dose = @cocktail.doses.build(dose_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy()
    redirect_to cocktails_path
  end



 private

   def dose_params
     params.require(:dose).permit(:description, :ingredient_id)
   end

    def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
    end

end






