class LinkItemsController < ApplicationController
  before_action :set_link_item, only: %i[ show edit update destroy ]

  # GET /link_items or /link_items.json
  def index
    @link_items = LinkItem.all
  end

  # GET /link_items/1 or /link_items/1.json
  def show
  end

  # GET /link_items/new
  def new
    @link_item = LinkItem.new
  end

  # GET /link_items/1/edit
  def edit
  end

  # POST /link_items or /link_items.json
  def create
    # @link_item = LinkItem.new(link_item_params)
    @link_item = current_user.link_items.build(link_item_params)

    respond_to do |format|
      if @link_item.save
        format.html { redirect_to link_item_url(@link_item), notice: "Link item was successfully created." }
        format.json { render :show, status: :created, location: @link_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_items/1 or /link_items/1.json
  def update
    respond_to do |format|
      if @link_item.update(link_item_params)
        format.html { redirect_to link_item_url(@link_item), notice: "Link item was successfully updated." }
        format.json { render :show, status: :ok, location: @link_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_items/1 or /link_items/1.json
  def destroy
    @link_item.destroy!

    respond_to do |format|
      format.html { redirect_to link_items_url, notice: "Link item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_item
      @link_item = LinkItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_item_params
      params.require(:link_item).permit(:url, :name, :icon)
    end
end
