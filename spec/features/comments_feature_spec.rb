require 'rails_helper'

RSpec.feature "Comments", type: :feature do
  context "comment a project" do
    let!(:project) { create(:project) }

    before do
      visit root_path
    end

    context "when params are valid" do
      let(:comment_body) { "New comment body" }

      scenario "new comment appears in the list" do
        click_on project.title

        fill_in "comment_body", with: comment_body

        click_on "Create Comment"

        expect(page).to have_content(comment_body)
        expect(Comment.last.body).to eq(comment_body)
      end
    end

    context "when params are invalid" do
      scenario "new comment appears in the list" do
        click_on project.title

        fill_in "comment_body", with: ""

        click_on "Create Comment"

        expect(page).to have_content("Body is too short (minimum is 2 characters)")
      end
    end
  end
end
