class BucketsController < ApplicationController

  before_action :set_bucket, only: :destroy

  # POST /buckets(.:format)
  def create
    bucket = Bucket.new(bucket_params)
    if bucket.save
      flash[:notice] = "Bucket created successfuly"
    else
      flash[:alert] = "Bucket creating error"
    end
    redirect_to root_path
  end

  # DELETE /buckets/:id(.:format)
  def destroy
    @bucket.destroy!
    redirect_to root_path, notice: "Bucket destroyed successfuly"
  end

  private

  def bucket_params
    params.require(:bucket).permit(:name)
  end

  def set_bucket
    @bucket = Bucket.find(params[:id])
  end

end
