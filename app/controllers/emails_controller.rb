class EmailsController < ApplicationController
  # before_action :set_email, only: [:show, :update, :destroy]
  before_action :set_site, only: [:create]

  # GET /emails
  # uncomment when we authenticated user accounts set up
  # def index
  #   @emails = Email.all

  #   render json: @emails
  # end

  # # GET /emails/1
  def show
    render json: @email
  end

  # POST /emails
  def create
    @email = Email.new(email_params)
    @email.site_id = @site.nil? ? nil: @site.id
    if @email.save
      render json: @email, status: :created, location: @email
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /emails/1
  # def update
  #   if @email.update(email_params)
  #     render json: @email
  #   else
  #     render json: @email.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /emails/1
  # def destroy
  #   @email.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a trusted parameter "white list" through.
    def email_params
      params.require(:email).permit(:address, :api_key)
    end

    def set_site
      api_key = params[:email].delete(:api_key)
      domain = Rails.env.development? ? 'example.com' : UrlParser.domain(request.original_url)
      user = User.find_by_api_key_and_domain(api_key, domain)
      return if user.nil?
      @site = user.sites.find_by_domain(domain)
    end
end
