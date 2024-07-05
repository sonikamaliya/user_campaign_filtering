# frozen_string_literal: true

# Decorator for user object
class UserDecorator < Draper::Decorator
  delegate_all

  def name
    object.name.to_s.titleize
  end
end
