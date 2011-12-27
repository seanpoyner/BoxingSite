class CaptainsController < ApplicationController
  # GET /captains
  # GET /captains.json
  def index
    @captains = Captain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @captains }
    end
  end

  # GET /captains/1
  # GET /captains/1.json
  def show
    @captain = Captain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @captain }
    end
  end

  # GET /captains/new
  # GET /captains/new.json
  def new
    @captain = Captain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @captain }
    end
  end

  # GET /captains/1/edit
  def edit
    @captain = Captain.find(params[:id])
  end

  # POST /captains
  # POST /captains.json
  def create
    @captain = Captain.new(params[:captain])

    respond_to do |format|
      if @captain.save
        format.html { redirect_to @captain, :notice => 'Captain was successfully created.' }
        format.json { render :json => @captain, :status => :created, :location => @captain }
      else
        format.html { render :action => "new" }
        format.json { render :json => @captain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /captains/1
  # PUT /captains/1.json
  def update
    @captain = Captain.find(params[:id])

    respond_to do |format|
      if @captain.update_attributes(params[:captain])
        format.html { redirect_to @captain, :notice => 'Captain was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @captain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /captains/1
  # DELETE /captains/1.json
  def destroy
    @captain = Captain.find(params[:id])
    @captain.destroy

    respond_to do |format|
      format.html { redirect_to captains_url }
      format.json { head :ok }
    end
  end
end
