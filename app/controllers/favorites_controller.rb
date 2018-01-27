class FavoritesController < ApplicationController
    
    def create
      favorite = current_user.favorites.create(post_id: params[:post_id])
      flash[:success] = "#{favorite.post.user.name}さんの投稿をお気に入り登録しました"
      redirect_to posts_url
    end

    def destroy
      favorite = current_user.favorites.find_by(post_id: params[:post_id]).destroy
      flash[:warning] = "#{favorite.post.user.name}さんの投稿をお気に入り解除しました"
      redirect_to posts_url
    end
   end