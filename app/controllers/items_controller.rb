class ItemsController < ApplicationController

  before_action :set_buckets
  before_action :set_bucket

  def index
    @items = @bucket.items
  end

  private

  def set_bucket
    @bucket = Bucket.find(params[:bucket_id])
  end

  def set_buckets
    @buckets = current_user.buckets
  end

end
