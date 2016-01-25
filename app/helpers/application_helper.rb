module ApplicationHelper

  def logoHelper
    image_tag("logo.jpg", :alt => "Application exemple", :class => "round")
  end

  def titre
    base_titre = "Simple App du Tutoriel Ruby on Rails"

    if @titre.nil?
      base_titre
    else
      "#{base_titre} #{@titre}"
    end
  end

end
