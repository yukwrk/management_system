class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:show, :edit, :update, :destroy]

  def index
    @constructions = Construction.all.includes(:details)
  end

  def show
    @construction = Construction.find(params[:id])
    @details = Detail.where(construction_id: @construction).group_by(&:construction_date)
    @total_costs = Detail.where(construction_id: @construction)
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
      format.html { redirect_to constructions_url, notice: '削除完了' }
      format.json { head :no_content }
    end
  end

  private

    def set_construction
      @construction = Construction.find(params[:id])
    end

    def construction_params
      # prms = 
      params.require(:construction).permit(
        :construction_name, :person, :total_cost, :charge, :comment, 
        :partner_name, :monthly_total_cost, 
          details_attributes: [
            :id, :detail_name, :tax_rate, :tax_class, :material_cost, 
            :labor_cost, :subcontract_cost, :site_overhead_expenses, 
            :corresponding_account, :account_name, :construction_date,
            :_destroy
            ]
        )
    end
end
