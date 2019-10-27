class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all.order(id: 'DESC')
  end

  def new
    @property = Property.new
    2.times do #最寄駅数変更したい場合は数値変更
      @property.station.build
    end
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:success] = '記事を作成しました！'
      redirect_to properties_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      flash[:success] = '記事を編集しました！'
      redirect_to properties_path
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    flash[:success] = '記事を削除しました！'
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:property, :rent, :address, :age, :note, station_attributes:[:id, :line, :station, :min])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end