class TosmicsController < ApplicationController
  before_action :find_tosmic, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @tosmics = Tosmic.all.order("created_at DESC")
  end

  def show
    
  end

  def new
    @tosmic = current_user.tosmics.build
  end

  def create
    @tosmic = current_user.tosmics.build(tosmic_params)

    if @tosmic.save
      redirect_to @tosmic, notice: "Sukses Menyimpan"
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @tosmic.update(tosmic_params)
      redirect_to @tosmic, notice: "Update Sukses"
    else
      render 'edit'
    end
  end

  def destroy
    @tosmic.destroy
    redirect_to root_path       
  end

  def upvote
    @tosmic.upvote_by current_user
    redirect_to :back
  end

  def tosmic_params
    params.require(:tosmic).permit(:title, :image)
  end   

  def find_tosmic
    @tosmic = Tosmic.find(params[:id])
  end
end
