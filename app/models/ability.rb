class Ability
  # https://launchschool.com/blog/how-to-use-devise-in-rails-for-authentication
  # http://railscasts.com/episodes/192-authorization-with-cancan
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
      if user.has_role? 'hr'
        can :manage, :all
      else
        can :read, Employee
        can :update, Employee
        can :apply_leave, ApplyLeave

        can :read, :all
      end
      # https://www.dropbox.com/s/awqpy7ifr67fcqb/HRMSystem182017.zip?dl=0
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
