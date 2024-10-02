require 'rails_helper'

RSpec.feature "Projects", type: :feature do
  context "create new project" do
    before do
      visit root_path
      click_on "Create project"
    end

    context "when params are valid" do
      let(:project_attributes) { attributes_for(:project) }

      scenario "new project appears in the list" do
        fill_in "Title", with: project_attributes[:title]
        fill_in "Description", with: project_attributes[:description]

        click_on "Create Project"

        expect(page).to have_content(project_attributes[:title])
        expect(Project.last.title).to eq(project_attributes[:title])
      end
    end

    context "when params are invalid" do
      scenario "users see error message" do
        fill_in "Title", with: ""

        click_on "Create Project"

        expect(page).to have_content("Title is too short (minimum is 2 characters)")
      end
    end
  end
end
