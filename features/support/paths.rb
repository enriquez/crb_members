module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    # Maps any defined routes helper:
    # ex.
    # the sign up page --> sign_up_path
    when /the (.*) page/
      named_route = "#{$1.gsub(" ", "_")}_path".to_sym
      send(named_route)

    # the page for a user with an email of "user@example.com" --> user_path(User.find_by_email("user@example.com")
    when /the page for a (.*) with an? (.*) of (.*)/
      model = $1
      attribute = $2
      value = $3

      named_route = "#{model.gsub(" ", "_")}_path".to_sym
      send(named_route, model.constantize.send("find_by_#{attribute}".to_sym, value))
      
    # the location(title:"Awesome Place") page for a user with an email of "user@example.com"
    # --> user_location_path(User.find_by_email("user@example.com"), Location.find_by_title("title"))
    when /the (.*)\(\/(.*):"(.*)"\) page for a (.*) with a? (.*) of (.*)/
      child_model = $1.gsub(" ", "_")
      child_model_attribute = $2
      child_model_value = $3

      parent_model = $4.gsub(" ", "_")
      parent_model_attribute = $5
      parent_model_value = $6

      named_route = "#{parent_model}_#{child_model}_path"
      send( named_route, 
            parent_model.constantize.send("find_by_#{parent_model_attribute}".to_sym, parent_model_value), 
            child_model.constantize.send("find_by_#{child_model_attribute}".to_sym, child_model_value))
    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
