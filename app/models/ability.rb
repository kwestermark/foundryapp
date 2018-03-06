class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :manage, User, id: user.id
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :create, Comment, id: user.id
      if user.admin?  # additional permissions for administrators
        can :manage, :all
      end
    end
  end
end
