class UserPolicy < ApplicationPolicy
  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

    def show?
      user.type == 'Manager'
    end


    def create?
      user.type == 'Manager'
    end

    def new?
      user.type == 'Manager'
    end






end
