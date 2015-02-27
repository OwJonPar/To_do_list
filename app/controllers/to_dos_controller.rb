class ToDosController < ApplicationController
  before_action :set_to_do, only: [:show, :edit, :update, :destroy]

  def index
    @to_dos = ToDo.all
  end

  def new
    @to_do = ToDo.new
  end

  def edit
  end

  def show
  end

  def create
    @to_do = ToDo.new(to_do_params)
    if @to_do.save
      redirect_to root_path, notice: 'To Do was successfully created.'
    else
      render :new
    end
  end

  def update
    if @to_do.update(to_do_params)
      redirect_to root_path, notice: 'To Do was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @to_do.destroy
    redirect_to to_dos_url, notice: 'To Do was successfully destroyed.'
  end

  private
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    def to_do_params
      params.require(:to_do).permit(:text, :row_order)
    end

end
