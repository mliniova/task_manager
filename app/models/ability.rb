class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user ||= User.new
    can :read, :all
    can :create, Project
    can [:edit, :update], Project, :user_id => @user.id
    can :create, Task
    can :manage, Task, :project => { :user_id => @user.id }
  end

end
