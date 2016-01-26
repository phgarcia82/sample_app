# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class UsersController < ApplicationController
  def new
    @titre = "Inscription"
  end

  def show
    @user = User.find(params[:id])
    @titre = @user.nom
  end
end
