module UsersHelper
  def filter_users_query(search_params)
    search_tearms = JSON.parse(search_params)
    query = ""
    if search_tearms.length == 1
      query += " '#{search_tearms.first}')"
    else
      search_tearms.each do |s|
        query += "JSON_SEARCH(campaigns_list, 'all', '#{s}')"
        query += " OR " if (s != search_tearms.last)
      end
    end
    query
  end
end
