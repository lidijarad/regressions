# frozen_string_literal: true

require_dependency 'regressions/application_controller'

module Regressions
  class VersionsController < ApplicationController
    def index
      @versions = PaperTrail::Version.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
    end
  end
end
