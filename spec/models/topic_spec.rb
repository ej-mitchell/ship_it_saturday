require "rails_helper"

describe Topic do
  it { should have_valid(:name).when('name') }
  it { should have_valid(:description).when('description') }

  it { should_not have_valid(:name).when(nil, '') }
  it { should_not have_valid(:description).when(nil, '') }
end

RSpec.describe 'Topic' do
  context 'make a new topic' do
    let(:topic) { Topic.new(name: 'Test name', description: 'test description') }

    it 'has a name and description' do
      expect(topic.name).to include('Test name')
      expect(topic.description).to include('test description')
    end
  end
end
