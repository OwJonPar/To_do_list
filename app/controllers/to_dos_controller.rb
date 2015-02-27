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
      redirect_to root_path, notice: 'Task was successfully created.'
    else
      flash.now[:notice] = "Task box cannot be blank"
      render :new
    end
  end

  def update
    if @to_do.update(to_do_params)
      redirect_to root_path, notice: 'Task was successfully updated.'
    else
      flash.now[:notice] = "Task box cannot be blank"
      render :edit
    end
  end

  def destroy
    @to_do.destroy
    redirect_to to_dos_url, notice: 'Task was successfully destroyed.'
  end

  private
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    def to_do_params
      params.require(:to_do).permit(:text, :row_order)
    end

end
