require 'rails_helper'

RSpec.describe Project, type: :model do
  describe 'validations' do
    context 'when params are valid' do
      it 'saves the record into db' do
        expect {
          Project.create(title: 'My wonderfull project', description: 'Hey its gonna rock the world')
        }.to change { Project.count }.from(0).to(1)
      end
    end
  end
end
