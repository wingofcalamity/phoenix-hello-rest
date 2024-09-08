defmodule ApiWeb.PageController do
  use ApiWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def test(conn, _params) do
    users = [
      %{id: 1, name: "John", age: 45},
      %{id: 2, name: "Test", age: 23}
    ]

    render(conn, :test, users: users, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "John", age: 45},
      %{id: 2, name: "Test", age: 23}
    ]

    json(conn, %{users: users})
  end
end
