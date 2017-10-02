resource "datadog_user" "<%= user_name %>" {
  <%- unless user["disabled"].nil? -%>
  disabled = "<%= user["disabled"] %>"
  <%- end -%>
  <%- unless user["email"].nil? -%>
  email = "<%= user["email"] %>"
  <%- end -%>
  handle = "<%= user["handle"] %>"
  <%- unless user["is_admin"].nil? -%>
  is_admin = "<%= user["is_admin"] %>"
  <%- end -%>
  name = "<%= user["name"] %>"
  <%- unless user["role"].nil? -%>
  role = "<%= user["role"] %>"
  <%- end -%>
}