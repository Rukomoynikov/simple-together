require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'associations' do
    it { should have_many(:comments) }
  end

  describe 'validations' do
    context 'when params are valid' do
      let(:project_attributes) { attributes_for(:project) }

      it 'saves the record into db' do
        expect {
          Project.create(project_attributes)
        }.to change {
          Project.count
        }
      end
    end

    context 'when params are valid' do
      it { should validate_length_of(:title).is_at_least(2) }
    end
  end
end
