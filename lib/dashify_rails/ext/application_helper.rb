module ApplicationHelper
  def widget(partial, channel = nil, locals = {})
    locals[:value] = (locals[:value] || []).to_json

    html = ''
    html += stylesheet_link_tag "widgets/#{partial}"
    html += javascript_include_tag "widgets/#{partial}"
    html += render partial: "/widgets/#{partial.to_s}", 
                   locals: locals.merge(channel: channel)
    html.html_safe
  end
end