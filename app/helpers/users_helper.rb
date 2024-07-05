# frozen_string_literal: true

# users helper methods
module UsersHelper
  def filter_users_query(search_params)
    search_params.map { |s| "campaigns_list LIKE '%#{s}%'" }.join(' OR ')
  end
end
