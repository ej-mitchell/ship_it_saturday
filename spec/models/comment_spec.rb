require 'rails_helper'

describe Comment do
  it { should have_valid(:username).when('username') }
  it { should have_valid(:body).when('body') }
  it { should have_valid(:post_id).when(1, 2, 300) }

  it { should_not have_valid(:body).when(nil, '') }
  it { should_not have_valid(:post_id).when(nil, '') }
end

RSpec.describe Comment do
  context 'making a new comment' do
    let(:comment) { Comment.new(username: 'user', body: 'comment body', post_id: 1) }

    it 'has a username' do
      expect(comment.username).to include('user')
    end

    it 'has a body' do
      expect(comment.body).to include('comment body')
    end

    it 'has a post_id' do
      expect(comment.post_id).to eq(1)
    end
  end
end
