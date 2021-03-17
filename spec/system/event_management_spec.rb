require 'rails_helper'

RSpec.describe 'Event management', type: :system do
  describe 'create' do
    it 'succeeds' do
      visit '/events/new'

      fill_in 'Type', with: 'Lecture'
      fill_in 'Date', with: '2021-02-13'
      fill_in 'Title', with: 'How to Create a Simple CRUD App with Rails and React'
      fill_in 'Speakers', with: 'James Hibbard'
      fill_in 'Hosts', with: 'David Heinemeier Hansson, Yukihiro Matsumoto'
      check 'Publish'
      click_button 'Save'

      expect(page).to have_text('Event Added!')
    end
  end

  describe 'read' do
    let(:valid_attributes) {
      {
        event_type: 'Lecture',
        event_date: '2021-06-08',
        title: 'Learning Rails: The Middle Path',
        speaker: 'Bill Barnett',
        host: 'Cincinnati Ruby Brigade',
        published: true
      }
    }
    let!(:an_event) { Event.create(valid_attributes) }

    it 'succeeds' do
      visit "/events/#{an_event.id}"

      expect(page).to have_text(an_event.title)
    end
  end

  describe 'update' do
    let(:valid_attributes) {
      {
        event_type: 'Lecture',
        event_date: '2007-08-18',
        title: 'Really Achieving Your Childhood Dreams',
        speaker: 'Dr. Randy Pausch',
        host: 'Carnegie Mellon University',
        published: true
      }
    }
    let!(:an_existing_event) { Event.create(valid_attributes) }

    it 'succeeds' do
      visit "/events/#{an_existing_event.id}/edit"

      fill_in 'Date', with: '2007-09-18'
      click_button 'Save'

      expect(page).to have_text('Event updated')
    end
  end

  describe 'delete' do
    let(:valid_attributes) {
      {
        event_type: 'Lecture',
        event_date: '2021-08-26',
        title: 'All of the Bacon & Eggs You Have',
        speaker: 'Ron Swanson',
        host: 'Department of Parks and Recreation, Pawnee, IN',
        published: false
      }
    }
    let!(:a_useless_event) { Event.create(valid_attributes) }

    it 'succeeds' do
      visit "/events/#{a_useless_event.id}"

      click_on 'Delete'
      page.driver.browser.switch_to.alert.accept

      expect(page).to have_text('Event deleted successfully')
    end
  end
end
