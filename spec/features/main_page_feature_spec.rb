require 'rails_helper'

RSpec.feature "Main page", type: :feature do
  describe "Recent comments" do
    let!(:project) { create(:project) }
    let!(:comment) { create(:comment, project: project) }

    it "shows recent comments" do
      visit root_path

      expect(page).to have_content(comment.body)
    end
  end
end
