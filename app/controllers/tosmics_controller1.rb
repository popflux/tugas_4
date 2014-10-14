class TosmicsController < ApplicationController
  before_action :find_tosmic, only: [:show, :edit, :update, :destroy]
  
  def index
    @tosmics = Tosmic.all.order("created_at DESC")
  end

  def show
    @tosmic = Tosmic.new
  end
 
  def new
  end

  def create
    @tosmic = Tosmic.new(tosmic_params)

    if @tosmic.save
      redirect_to @tosmic, notice: "Sukses Menyimpan"

    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private

  def tosmic_params
    params.require(:tosmic).permit(:title)
  end

  def find_tosmic
    @tosmic = Tosmic.find(params[:id])
  end  
end
