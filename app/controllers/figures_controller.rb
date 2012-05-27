class FiguresController < ApplicationController
  # GET /figures
  # GET /figures.json
  def index
    @figures = Figure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @figures }
    end
  end

  # GET /figures/1
  # GET /figures/1.json
  def show
    @figure = Figure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @figure }
    end
  end

  # GET /figures/new
  # GET /figures/new.json
  def new
    @figure = Figure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @figure }
    end
  end

  # GET /figures/1/edit
  def edit
    @figure = Figure.find(params[:id])
  end

  # POST /figures
  # POST /figures.json
  def create
    @figure = Figure.new(params[:figure])

    respond_to do |format|
      if @figure.save
        format.html { redirect_to @figure, notice: 'Figure was successfully created.' }
        format.json { render json: @figure, status: :created, location: @figure }
      else
        format.html { render action: "new" }
        format.json { render json: @figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /figures/1
  # PUT /figures/1.json
  def update
    @figure = Figure.find(params[:id])

    respond_to do |format|
      if @figure.update_attributes(params[:figure])
        format.html { redirect_to @figure, notice: 'Figure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /figures/1
  # DELETE /figures/1.json
  def destroy
    @figure = Figure.find(params[:id])
    @figure.destroy

    respond_to do |format|
      format.html { redirect_to figures_url }
      format.json { head :no_content }
    end
  end
end
