class TeamMatesController < ApplicationController
  # GET /team_mates
  # GET /team_mates.json
  def index
    @team_mates = TeamMate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @team_mates }
    end
  end

  # GET /team_mates/1
  # GET /team_mates/1.json
  def show
    @team_mate = TeamMate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @team_mate }
    end
  end

  # GET /team_mates/new
  # GET /team_mates/new.json
  def new
    @team_mate = TeamMate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @team_mate }
    end
  end

  # GET /team_mates/1/edit
  def edit
    @team_mate = TeamMate.find(params[:id])
  end

  # POST /team_mates
  # POST /team_mates.json
  def create
    @team_mate = TeamMate.new(params[:team_mate])

    respond_to do |format|
      if @team_mate.save
        format.html { redirect_to @team_mate, notice: 'Team mate was successfully created.' }
        format.json { render json: @team_mate, status: :created, location: @team_mate }
      else
        format.html { render action: "new" }
        format.json { render json: @team_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /team_mates/1
  # PUT /team_mates/1.json
  def update
    @team_mate = TeamMate.find(params[:id])

    respond_to do |format|
      if @team_mate.update_attributes(params[:team_mate])
        format.html { redirect_to @team_mate, notice: 'Team mate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @team_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_mates/1
  # DELETE /team_mates/1.json
  def destroy
    @team_mate = TeamMate.find(params[:id])
    @team_mate.destroy

    respond_to do |format|
      format.html { redirect_to team_mates_url }
      format.json { head :no_content }
    end
  end
end
