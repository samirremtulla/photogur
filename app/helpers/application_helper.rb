module ApplicationHelper

  def copyright_text(picture)
    if picture.copyrighted?
      return "Copyrighted"
    else
      return "Not Copyrighted"
    end
  end


end
