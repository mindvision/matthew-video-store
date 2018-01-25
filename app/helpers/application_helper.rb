module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Matthews Video Store Sample App"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end

  def flash_type(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-danger"
    when :alert then "alert alert-error"
    end
  end
  
end
