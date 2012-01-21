class SpiritsController < ApplicationController
  def index
    @spirits = Spirit.all[0..9]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @spirits }
    end
  end

  def show
    @spirit = Spirit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @spirit }
    end
  end

  def new
    @spirit = Spirit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @spirit }
    end
  end

  def edit
    @spirit = Spirit.find(params[:id])
  end

  def create
    @spirit = Spirit.new(params[:spirit])

    respond_to do |format|
      if @spirit.save
        format.html { redirect_to @spirit, :notice => 'Spirit was successfully created.' }
        format.json { render :json => @spirit, :status => :created, :location => @spirit }
      else
        format.html { render :action => "new" }
        format.json { render :json => @spirit.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @spirit = Spirit.find(params[:id])

    respond_to do |format|
      if @spirit.update_attributes(params[:spirit])
        format.html { redirect_to @spirit, :notice => 'Spirit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @spirit.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @spirit = Spirit.find(params[:id])
    @spirit.destroy

    respond_to do |format|
      format.html { redirect_to spirits_url }
      format.json { head :ok }
    end
  end
end
