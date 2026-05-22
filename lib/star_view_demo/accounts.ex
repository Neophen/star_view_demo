defmodule StarViewDemo.Accounts do
  use Ash.Domain,
    otp_app: :star_view_demo

  resources do
    resource StarViewDemo.Accounts.Token
    resource StarViewDemo.Accounts.User
  end
end
