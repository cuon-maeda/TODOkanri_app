require 'rails_helper'

RSpec.describe TasksController, type: :request do
  let!(:task) {create(:task)}
  describe 'GET /index' do
    context '適切なステータスコードが帰ってくるか' do
      subject { get tasks_path }
      it { is_expected.to eq(200) }
    end
  end

  describe 'GET /show' do
    context '適切なステータスコードが帰ってくるか' do
      subject { get task_path(task)}
      it { is_expected.to eq(200) }
    end
  end

  describe 'GET /edit' do
    context '適切なステータスコードが帰ってくるか' do
      subject { get edit_task_path(task)}
      it { is_expected.to eq(200) }
    end
  end

  describe 'GET /edit' do
    context '適切なステータスコードが帰ってくるか' do
      subject { get new_task_path(task)}
      it { is_expected.to eq(200) }
    end
  end

  describe 'GET /destroy' do
    context 'destroyコントローラーのテスト' do
      subject { get new_task_path(task)}
      it '適切なステータスコードが帰ってくる' do
        is_expected.to eq(200)
      end

      it 'レコードが1つ減ること' do

      end
    end
  end
end
