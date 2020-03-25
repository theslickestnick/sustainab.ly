class OrganizationsController < ApplicationController

    def index
        @organizations = Organization.all
    end

    def show
        @organization = Organization.find(params[:id])
    end

    def edit
        @organization = Organization.find(params[:id])
    end
    
    def update
        @organization = Organization.find(params[:id])
        @organization.update(organization_params)
        redirect_to organization_path(@organization.id)
    end

    def new
        @organization = Organization.new
    end

    def create
        @organizations = Organization.new(organization_params)
        @organization.save
        redirect_to organization_path(@organization.id)
    end

    private

    def organization_params
        params.require(:organizations).permit(:name, :street_address, :city, :state, :zip_code, :contact_email, :phone_number)
    end
end
