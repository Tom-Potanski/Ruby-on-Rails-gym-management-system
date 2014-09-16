#A: MS

module ApplicationHelper


  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Twoja siłownia, online | Małgorzata Szwed"
    if page_title.empty?
      base_title
    else
      #S następuje tu interpolacja (połączenie) napisów. Wynik identyczny, jak przy konkatenacji - różnica polega na konstrukcji składniowej
      "#{base_title} | #{page_title}"
    end
  end

end
