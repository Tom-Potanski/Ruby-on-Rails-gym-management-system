module StaticPagesHelper

  def current_active_menu(active_menu)
    base_title = ""
    if active_menu.empty?
      base_title
    else
      active_menu
    end
  end

end
