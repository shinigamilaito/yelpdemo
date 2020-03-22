class RestaurantPolicy < ApplicationPolicy
  def create?
    user.admin?
  end

  def destroy
    create?
  end

  def update?
    create?
  end
end