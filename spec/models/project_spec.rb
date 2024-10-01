require 'rails_helper'

RSpec.describe Project, type: :model do
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
  end
end
