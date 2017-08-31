class BucketsController < ApplicationController

  before_action :set_bucket, only: :destroy

  # POST /buckets(.:format)
  def create
    bucket = current_user.buckets.build(bucket_params)
    if bucket.save
      redirect_to bucket_items_path(bucket), notice: "Bucket created successfuly"
    else
      redirect_to dashboard_index_path, alert: "Bucket creating error"
    end
  end

  # DELETE /buckets/:id(.:format)
  def destroy
    @bucket.destroy!
    redirect_to dashboard_index_path, notice: "Bucket destroyed successfuly"
  end

  private

  def bucket_params
    params.require(:bucket).permit(:name)
  end

  def set_bucket
    @bucket = Bucket.find(params[:id])
  end

end
