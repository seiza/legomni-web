class UserFiguresController < ApplicationController
  # GET /user_figures
  # GET /user_figures.json
  def index
    @user_figures = UserFigure.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_figures }
    end
  end

  # GET /user_figures/1
  # GET /user_figures/1.json
  def show
    @user_figure = UserFigure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_figure }
    end
  end

  # GET /user_figures/new
  # GET /user_figures/new.json
  def new
    @user_figure = UserFigure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_figure }
    end
  end

  # GET /user_figures/1/edit
  def edit
    @user_figure = UserFigure.find(params[:id])
  end

  # POST /user_figures
  # POST /user_figures.json
  def create
    @user_figure = UserFigure.new(params[:user_figure])

    respond_to do |format|
      if @user_figure.save
        format.html { redirect_to @user_figure, notice: 'User figure was successfully created.' }
        format.json { render json: @user_figure, status: :created, location: @user_figure }
      else
        format.html { render action: "new" }
        format.json { render json: @user_figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_figures/1
  # PUT /user_figures/1.json
  def update
    @user_figure = UserFigure.find(params[:id])

    respond_to do |format|
      if @user_figure.update_attributes(params[:user_figure])
        format.html { redirect_to @user_figure, notice: 'User figure was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_figure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_figures/1
  # DELETE /user_figures/1.json
  def destroy
    @user_figure = UserFigure.find(params[:id])
    @user_figure.destroy

    respond_to do |format|
      format.html { redirect_to user_figures_url }
      format.json { head :no_content }
    end
  end
end
