# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     App.Repo.insert!(%App.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias App.Account

users = [
  %{
    email: "admin@example.com",
    password: "pippopippopippo"
  },
  %{
    email: "demo@example.com",
    password: "pippopippopippo"
  },
  %{
    email: "user@example.com",
    password: "pippopippopippo"
  },
]

Enum.each(users, fn user ->
  Account.register_user(user)
end)
