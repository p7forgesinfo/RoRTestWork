class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: [:destroy] #:show, :edit, :update, 

  # GET /subscriptions
  # GET /subscriptions.json
  def index
    @dailySubscription = Subscription.where(email: current_user.email, time: 'daily')
    @weeklySubscription = Subscription.where(email: current_user.email, time: 'weekly')

    @isSignedDaily = @dailySubscription.count > 0
    @isSignedWeekly = @weeklySubscription.count > 0
    
    if not @isSignedDaily or not @isSignedWeekly
      @subscription = Subscription.new
    end
  end

  # GET /subscriptions/1
  # GET /subscriptions/1.json
  def show
  end

  # GET /subscriptions/new
  def new
  #  @subscription = Subscription.new
  end

  # GET /subscriptions/1/edit
  def edit
  end

  # POST /subscriptions
  # POST /subscriptions.json
  def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to subscriptions_url, notice: t('subscription.notice.created') }
        format.json { render :show, status: :created, location: @subscription }
      end
    end
  end

  # PATCH/PUT /subscriptions/1
  # PATCH/PUT /subscriptions/1.json
  def update
  end

  # DELETE /subscriptions/1
  # DELETE /subscriptions/1.json
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_url, notice: t('subscription.notice.destroyed') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscription
      @subscription = Subscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscription_params
      params.require(:subscription).permit(:email, :time)
    end
end
