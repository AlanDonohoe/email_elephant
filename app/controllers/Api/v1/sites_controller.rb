# class Api::V1::SitesController < ApplicationController
#   before_action :set_site, only: [:show, :update, :destroy]

#   # GET /sites
#   def index
#     @sites = Site.all

#     render json: @sites
#   end

#   # GET /sites/1
#   def show
#     render json: @site
#   end

#   # POST /sites
#   def create
#     puts 'site_params ' + site_params.inspect
#     @site = Site.new(site_params)

#     if @site.save
#       puts ' @site ' + @site.inspect
#       # render json: @site, status: :created, location: @site
#       render json: @site, status: :created, location: @site, each_serializer: Api::V1::SiteSerializer
#     else
#       render json: @site.errors, status: :unprocessable_entity
#     end
#   end

#   # PATCH/PUT /sites/1
#   def update
#     if @site.update(site_params)
#       render json: @site
#     else
#       render json: @site.errors, status: :unprocessable_entity
#     end
#   end

#   # DELETE /sites/1
#   def destroy
#     @site.destroy
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_site
#       @site = Site.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
#     def site_params
#       params.require(:site).permit(:url, :api_key, emails_attributes: [:address])
#     end
# end
