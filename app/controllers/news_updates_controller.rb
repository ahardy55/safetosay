class NewsUpdatesController < ApplicationController
  before_action :set_news_update, only: [:show, :edit, :update, :destroy]

  # GET /news_updates
  # GET /news_updates.json
  def index
    @news_updates = NewsUpdate.all.paginate(page: params[:page], per_page: 5).order("created_at desc")
  end

  # GET /news_updates/1
  # GET /news_updates/1.json
  def show
    @news_update = NewsUpdate.find(params[:id])
  end

  # GET /news_updates/new
  def new
    @news_update = NewsUpdate.new
  end

  # GET /news_updates/1/edit
  def edit
  end

  # POST /news_updates
  # POST /news_updates.json
  def create
    @news_update = NewsUpdate.new(news_update_params)

    respond_to do |format|
      if @news_update.save
        format.html { redirect_to @news_update, notice: 'News update was successfully created.' }
        format.json { render :show, status: :created, location: @news_update }
      else
        format.html { render :new }
        format.json { render json: @news_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_updates/1
  # PATCH/PUT /news_updates/1.json
  def update
    respond_to do |format|
      if @news_update.update(news_update_params)
        format.html { redirect_to @news_update, notice: 'News update was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_update }
      else
        format.html { render :edit }
        format.json { render json: @news_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_updates/1
  # DELETE /news_updates/1.json
  def destroy
    @news_update.destroy
    respond_to do |format|
      format.html { redirect_to news_updates_url, notice: 'News update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_update
      @news_update = NewsUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_update_params
      params.require(:news_update).permit(:title, :content)
    end
end
