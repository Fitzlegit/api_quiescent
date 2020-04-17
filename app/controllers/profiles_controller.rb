class ProfilesController < ApplicationController
  def index
    profiles = Profile.all
    render json: profiles
  end

  def show
    profile = Profile.find_by(id: params[:id])
    render json: profile
  end

  def create
    newProfile = Profile.new(profile_params)
    newProfile.save
    render json: newProfile
  end

  def update
    updateProfile = Profile.find_by(:id params[:id])
    updateProfile.update(profile_params)
    updateProfile.save
    render json: updateRecipe
  end

  def destroy
    profile = Recipe.find_by(id: params[:id])
    profile.delete
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :why, :meditations, :user_id)
  end


end
