require 'rails_helper'

RSpec.feature "Main page", type: :feature do
  let(:project) { create(:project) }

  scenario "User can see list of project on the main page" do
     visit '/'

     expect(page).to have_text(project.title)
   end
end
