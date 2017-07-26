require 'rails_helper'

describe Post do
  it { should have_valid(:title).when('title') }
  it { should have_valid(:body).when('body') }
  it { should have_valid(:username).when('username') }
  it { should have_valid(:topic_id).when(1, 2, 300) }

  it { should_not have_valid(:title).when(nil, '') }
  it { should_not have_valid(:body).when(nil, '') }
  it { should_not have_valid(:topic_id).when(nil, '') }
end

RSpec.describe do
  context 'making a new post' do
    let(:post) { Post.new(title: 'New Post', body: 'post body', username: 'user', topic_id: 1) }

    it 'has a title' do
      expect(post.title).to include('New Post')
    end

    it 'has a body' do
      expect(post.body).to include('post body')
    end

    it 'has a username' do
      expect(post.username).to include('user')
    end

    it 'has a topic id' do
      expect(post.topic_id).to eq(1)
    end
  end
end
