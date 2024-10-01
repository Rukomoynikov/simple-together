# frozen_string_literal: true

require "rails_helper"

RSpec.describe ProjectsListComponent, type: :component do
  let(:project) { create(:project) }

  it "renders something useful" do
    expect(
      render_inline(described_class.new(projects: [project])).to_html
    ).to include(
      project.title
    )
  end
end
