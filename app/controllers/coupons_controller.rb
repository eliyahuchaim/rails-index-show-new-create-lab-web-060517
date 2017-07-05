class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(pa rams[:id])
  end

  def create

    # coupon = params[:coupon]
    # code = coupon[:coupon_code]
    # store = coupon[:store]
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

end
