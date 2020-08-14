class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:show, :edit, :update, :destroy]

  def index
    @constructions = Construction.all
  end

  def show
  end

  def new
    @construction = Construction.new
    @detail = @construction.details.build
  end

  def edit
  end

  def create
    @construction = Construction.new(construction_params)


      if @construction.save
        redirect_to constructions_path
      else
        render new
      end
  end

  def update
    respond_to do |format|
      if @construction.update(construction_params)
        format.html { redirect_to constructions_path, notice: 'Construction was successfully updated.' }
        format.json { render :show, status: :ok, location: @construction }
      else
        format.html { render :edit }
        format.json { render json: @construction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @construction.destroy
    respond_to do |format|
      format.html { redirect_to constructions_url, notice: 'Construction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_construction
      @construction = Construction.find(params[:id])
    end

    def construction_params
      params.require(:construction).permit(:construction_name, :person, :tolal_cost, :charge, :comment, :partner_name, :monthly_total_cost, details_attributes: [:id, :detail_name, :tax_rate, :tax_class, :material_cost, :labor_cost, :subcontract_cost, :site_overhead_expenses, :corresponding_account, :account_name, :construction_date])
    end
end
