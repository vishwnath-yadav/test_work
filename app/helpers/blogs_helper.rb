module BlogsHelper
  def get_styles
    "font-size: #{@blog.font_size.blank? ? '13' : @blog.font_size}px; color: #{@blog.color.blank? ? '#333' : @blog.color}"
  end
end
