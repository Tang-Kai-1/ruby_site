class ListsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_list, only: %i[ show ]#edit update destroy ]
  
  # GET /lists or /lists.json
  def index
    if params[:sort].present? && params[:region].present? && params[:income_level].present?
      @lists = List.filter_two(params[:region],params[:income_level]).order(sort_column + " " + sort_direction)
    elsif params[:region].present? && params[:income_level].present?
      @lists = List.filter_two(params[:region],params[:income_level])
    elsif params[:region].present? && params[:sort].present?
      @lists = List.filter_region(params[:region]).order(sort_column + " " + sort_direction)
    elsif params[:region].present?
      @lists = List.filter_region(params[:region])
    elsif params[:income_level].present? && params[:sort].present?
      @lists = List.filter_income(params[:income_level]).order(sort_column + " " + sort_direction)
    elsif params[:income_level].present?
      @lists = List.filter_income(params[:income_level])
    elsif params[:search].present? && params[:sort].present?
      @lists = List.search(params[:search]).order(sort_column + " " + sort_direction)
    elsif params[:search].present?
      @lists = List.search(params[:search])
    elsif params[:sort].present?
      @lists = List.order(sort_column + " " + sort_direction)
    else
      @lists = List.all
    end
    #DirectionClass.changedir
  end

  # GET /lists/1 or /lists/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def sort_column
      List.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
    
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:CountryCode, :Country, :Region, :IncomeLevel, :Average, :YearMin, :Min, :YearMax, :Max, :search)
    end
end
