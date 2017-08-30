class DashboardController < ApplicationController
  def index
    @buckets = Bucket.all
  end
end
