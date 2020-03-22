class ReviewPolicy < ApplicationPolicy
  def update?
    record.user == user || user.admin?
  end

  def destroy?
    update?
  end
end