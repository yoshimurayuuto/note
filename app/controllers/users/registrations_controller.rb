class Users::RegistrationsController < ApplicationController
  def build_resource(hash={})
    hash[:uid] = User.create_unique_string
    super
  end

  def new
    @user = User.new
  end
end
