# frozen_string_literal: true

require_dependency 'regressions/application_controller'

module Regressions
  class VersionsController < ApplicationController

    def index
      @versions = PaperTrail::Version.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
      @versions = @versions.where(item_type: params[:type]) if params[:type]
      @versions = @versions.where(item_id: params[:id]) if params[:id]

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @versions }
      end
    end

    def show
      @version = PaperTrail::Version.find(params[:id])
    end

    def permissible_params
      params.permit(:id, :type)
    end
  end
end
