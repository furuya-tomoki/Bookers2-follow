class RelationshipsController < ApplicationController
  # ルーティングによって定義されている
    before_action :authenticate_user!
	def create
		current_user.follow(params[:user_id])
		redirect_to request.referer
	end

	def destroy
		current_user.unfollow(params[:user_id])
		redirect_to request.referer
	end
	# ルーティングによって定義されている
  def follow
      current_user.follow(params[:id])
      redirect_back(fallback_location: root_path)
  end

  def unfollow
      current_user.unfollow(params[:id])
      redirect_back(fallback_location: root_path)
  end
end
