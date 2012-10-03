class MusicGroupsController < ApplicationController
  # GET /music_groups
  # GET /music_groups.json
  before_filter :authenticate_user!
  def index
    @music_groups = MusicGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @music_groups }
    end
  end

  # GET /music_groups/1
  # GET /music_groups/1.json
  def show
    @music_group = MusicGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @music_group }
    end
  end

  # GET /music_groups/new
  # GET /music_groups/new.json
  def new
    @music_group = MusicGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @music_group }
    end
  end

  # GET /music_groups/1/edit
  def edit
    @music_group = MusicGroup.find(params[:id])
  end

  # POST /music_groups
  # POST /music_groups.json
  def create
    @music_group = MusicGroup.new(params[:music_group])

    respond_to do |format|
      if @music_group.save
        format.html { redirect_to @music_group, notice: 'Music group was successfully created.' }
        format.json { render json: @music_group, status: :created, location: @music_group }
      else
        format.html { render action: "new" }
        format.json { render json: @music_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /music_groups/1
  # PUT /music_groups/1.json
  def update
    @music_group = MusicGroup.find(params[:id])

    respond_to do |format|
      if @music_group.update_attributes(params[:music_group])
        format.html { redirect_to @music_group, notice: 'Music group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @music_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_groups/1
  # DELETE /music_groups/1.json
  def destroy
    @music_group = MusicGroup.find(params[:id])
    @music_group.destroy

    respond_to do |format|
      format.html { redirect_to music_groups_url }
      format.json { head :no_content }
    end
  end
end
