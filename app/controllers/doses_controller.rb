class DosesController < ApplicationController
  before_action :find_cocktail, only: [ :new, :create, :destroy, :show]

  def new
    @doses = Dose.new
  end

  def create
    @doses = @cocktail.doses.build(doses_params)
    @doses.save
    redirect_to
  end


  def destroy
    @doses = Dose.find(params[:id])
    @doses.destroy
    redirect_to cocktail_path
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
  def find_cocktail
    @cocktails = Cocktail.find(params[:cocktail_id])
  end
end

