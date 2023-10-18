# frozen_string_literal: true

require 'application_system_test_case'

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test 'visiting the index' do
    visit tickets_url
    assert_selector 'h1', text: 'Tickets'
  end

  test 'should create ticket' do
    visit tickets_url
    click_on 'New ticket'

    click_on 'Create Ticket'

    assert_text 'Ticket was successfully created'
    click_on 'Back'
  end

  test 'should destroy Ticket' do
    visit ticket_url(@ticket)
    click_on 'Destroy this ticket', match: :first

    assert_text 'Ticket was successfully deleted'
  end
end
