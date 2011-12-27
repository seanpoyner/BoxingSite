class BoxersController < ApplicationController
  # GET /boxers
  # GET /boxers.json
  def index
    @boxers = Boxer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @boxers }
    end
  end

  # GET /boxers/1
  # GET /boxers/1.json
  def show
    @boxer = Boxer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @boxer }
    end
  end

  # GET /boxers/new
  # GET /boxers/new.json
  def new
    @boxer = Boxer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @boxer }
    end
  end

  # GET /boxers/1/edit
  def edit
    @boxer = Boxer.find(params[:id])
  end

  # POST /boxers
  # POST /boxers.json
  def create
    @boxer = Boxer.new(params[:boxer])

    respond_to do |format|
      if @boxer.save
        format.html { redirect_to @boxer, :notice => 'Boxer was successfully created.' }
        format.json { render :json => @boxer, :status => :created, :location => @boxer }
      else
        format.html { render :action => "new" }
        format.json { render :json => @boxer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boxers/1
  # PUT /boxers/1.json
  def update
    @boxer = Boxer.find(params[:id])

    respond_to do |format|
      if @boxer.update_attributes(params[:boxer])
        format.html { redirect_to @boxer, :notice => 'Boxer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @boxer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boxers/1
  # DELETE /boxers/1.json
  def destroy
    @boxer = Boxer.find(params[:id])
    @boxer.destroy

    respond_to do |format|
      format.html { redirect_to boxers_url }
      format.json { head :ok }
    end
  end
end
