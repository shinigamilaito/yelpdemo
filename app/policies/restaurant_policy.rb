class RestaurantPolicy < ApplicationPolicy
  def create?
    user.admin?
  end

  def destroy
    create?
  end
end