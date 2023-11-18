class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    # default name to define an instance of a given policy
    record.user == user
  end

  def destroy?
    # default name to define an instance of a given policy
    record.user == user
  end
end
