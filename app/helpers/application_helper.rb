module ApplicationHelper
  def full_title page_title
    base_title = t "ruby_onrails_tutorial_sample_app"
    page_title.blank? ? base_title : page_title + " | " + base_title
  end
end
