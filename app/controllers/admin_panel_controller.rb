class AdminPanelController < ApplicationController
  def panel_home

    @users = User.all

  end
end
