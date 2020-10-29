class PotinController < ApplicationController
  def show
		@id = params[:id]
		@potin = Potin.find(params[:id])
		@potin_title = @potin.title
		@potin_author_first_name = @potin.user.first_name
		@potin_author_last_name = @potin.user.last_name
		@potin_content = @potin.content
		@potin_user_id = @potin.user_id
  end


  def edit
	@potin = Potin.find(params[:id])
	
  end

  def update
	@potin = Potin.find(params[:id])
	post_params = params.require(:potin).permit(:title, :content)
	@potin.update(post_params)
	redirect_to root_path
  end

  def destroy
	@potin = Potin.find(params[:id])
	@potin.destroy
	redirect_to root_path

  end
end


