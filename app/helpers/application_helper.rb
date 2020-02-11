module ApplicationHelper
  # the helper function for creating the page title
  # it concatinates the input title and "Course Selecion Part 1"
  def full_title(page_title = '')
    base_title = "Course Selection Part 1"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
