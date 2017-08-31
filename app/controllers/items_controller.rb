class ItemsController < ApplicationController

  before_action :set_buckets
  before_action :set_bucket, only: [:index, :create]
  before_action :set_item, only: :destroy

  # GET    /buckets/:bucket_id/items(.:format)
  def index
    @items = @bucket.items
    @item = Item.new
  end

  # POST   /buckets/:bucket_id/items(.:format)
  def create
    # item = @bucket.items.build(item_params.merge({name: item_params[:file].original_filename}))
    item = @bucket.items.build(item_params)
    if item.save
      flash[:notice] = "File uploaded successfully"
    else
      flash[:alert] = "Upload error"
    end
    redirect_to bucket_items_path(@bucket)
  end

  # DELETE /buckets/:id(.:format)
  def destroy
    @bucket = @item.bucket
    @item.destroy!
    redirect_to bucket_items_path(@bucket), notice: "File deleted"
  end

  private

  def set_bucket
    @bucket = Bucket.find(params[:bucket_id])
  end

  def set_buckets
    @buckets = current_user.buckets
  end

  def item_params
    params.require(:item).permit(:file)
  end

  def set_item
    @item = Item.find(params[:id])
  end

end
