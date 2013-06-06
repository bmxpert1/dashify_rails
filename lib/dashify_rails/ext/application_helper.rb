module ApplicationHelper
  def widget(partial, channel = nil, locals = {})
    html = ''
    html += stylesheet_link_tag "widgets/#{partial}"
    html += javascript_include_tag "widgets/#{partial}"
    html += render partial: "/widgets/#{partial.to_s}", 
                   locals: locals.merge(channel: channel)
    html.html_safe
  end
end