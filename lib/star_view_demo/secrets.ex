defmodule StarViewDemo.Secrets do
  use AshAuthentication.Secret

  def secret_for(
        [:authentication, :tokens, :signing_secret],
        StarViewDemo.Accounts.User,
        _opts,
        _context
      ) do
    Application.fetch_env(:star_view_demo, :token_signing_secret)
  end
end
