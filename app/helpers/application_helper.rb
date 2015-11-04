module ApplicationHelper
  # Return full title on a per-page basis
  def full_title(page_title = '')
    base_title = "App.ly - The documenting tool for every job seeker"
    if page_title.empty?
      base_title
    else
      "#{page_title} &0124; #{base_title}"
    end
  end
end
