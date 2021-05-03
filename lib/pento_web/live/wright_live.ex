defmodule PentoWeb.WrightLive do
    use PentoWeb, :live_view
  
    def mount(_params, _session, socket) do
      {
        :ok,
        assign(
          socket,
          score: 0,
          message: "Now the Right Numbers."
        )
      }
    end
  
    def render(assigns) do
      ~L"""
      <h1>Your Score: <%= @score %></h1>
      <h2>
      <%= @message %>
      </h2>
      <h2>
      <%= for n <- 101..115 do %>
      <a href='#' phx-click="wright_guess" phx-value-number="<%= n %>"><%= n %></a>
      <% end %>
      </h2>
      """
    end
  end