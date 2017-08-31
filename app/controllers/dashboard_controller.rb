class DashboardController < ApplicationController

  skip_before_action :authenticate_user!, only: :landing
  before_action :set_buckets, except: :landing

  def index
  end

  def landing
  end

  private

  def set_buckets
    @buckets = current_user.buckets
  end

end
