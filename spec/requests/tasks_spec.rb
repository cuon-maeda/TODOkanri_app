require 'rails_helper'

RSpec.describe TasksController, type: :request do
  let!(:task) {create(:task)}
  let!(:task_params) {attributes_for(:task)}
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

  describe 'GET /new' do
    context '適切なステータスコードが帰ってくるか' do
      subject { get new_task_path}
      it { is_expected.to eq(200) }
    end
  end

  describe 'DELETE /destroy' do
    context 'destroyコントローラーのテスト' do
      subject { delete task_path(task)}
      it '適切なステータスコードが帰ってくる' do
        is_expected.to eq(302)
      end

      it 'レコードが1つ減ること' do
        expect {subject}.to change(Task, :count).by(-1)
      end

      it 'redirect 先が正しい' do
        is_expected.to redirect_to(tasks_path)
      end
    end
  end

  describe 'POST /create' do
    context 'createコントローラーのテスト 正常形' do
      subject { post tasks_path, params: { task: task_params }}
      it '適切なステータスコードが帰ってくる' do
        is_expected.to eq(302)
      end

      it 'レコードが1つ増えること' do
        expect {subject}.to change(Task, :count).by(1)
      end

      it '作成されたレコードの値が意図したものになっていること' do
        subject
        expect(task_params[:name]).to eq(Task.last.name)
      end

      it 'redirect 先が正しい' do
        is_expected.to redirect_to(tasks_path)
      end
    end
    context 'createコントローラーのテスト 異常形' do
      subject { post tasks_path, params: { task: {name: ''}}}
      it '適切なステータスコードが帰ってくる' do
        is_expected.to eq(200)
      end

      it 'レコードが増えないこと' do
        expect do
          subject
        end.to change(Task, :count).by(0)
      end

      it 'render 先が正しい' do
        is_expected.to render_template(:new)
      end
    end
  end
end
