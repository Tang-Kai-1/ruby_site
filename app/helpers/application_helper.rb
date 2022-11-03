module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
        link_to title, request.query_parameters.merge({sort: column, direction: direction})
        #link_to title, {:sort => column, :direction => direction}#, {:class => css_class}
      end
end
