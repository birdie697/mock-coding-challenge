class Api::V1::ReposController < ApplicationController
  def index
    render json: Repo.all
    # render json: Repo.all, adapter: :json
  end
end
