class ViewTicketsController < ApplicationController
  def view
    @tickets = Ticket.all
    @displayed = false
  end
end
