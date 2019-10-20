class PropertiesController < ApplicationController
  def index
    @properties = Property.all.order(id: 'DESC')
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def confirm
  end

  def update
  end

  def destroy
  end
end