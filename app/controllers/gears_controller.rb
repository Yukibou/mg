class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @search = current_user.gears.search(params[:q])
    @gears = @search.result
  end

  def show
  end

  def new
    @gear = current_user.gears.new
  end

  def edit
  end

  def create
    @gear = current_user.gears.new(gear_params)

    respond_to do |format|
      if @gear.save
        format.html { redirect_to @gear, notice: 'Gear was successfully created.' }
        format.json { render :show, status: :created, location: @gear }
      else
        format.html { render :new }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @gear.update(gear_params)
        format.html { redirect_to @gear, notice: 'Gear was successfully updated.' }
        format.json { render :show, status: :ok, location: @gear }
      else
        format.html { render :edit }
        format.json { render json: @gear.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gear.destroy
    respond_to do |format|
      format.html { redirect_to gears_url, notice: 'Gear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_gear
      @gear = Gear.find(params[:id])
    end

    def gear_params
      params.require(:gear).permit(:category_id, :image, :title, :name, :detail, :weight, :comment)
    end
end
