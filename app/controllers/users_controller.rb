class UsersController < ApplicationController

	def sintomas
		@user = User.new
	end

  def save_sintoma
    current_user.update(sintomas: params[:sintomas])
    redirect_to clinics_path
  end

  def edit
  end
	 def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
