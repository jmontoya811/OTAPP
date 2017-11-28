require 'rails_helper'

describe 'AuditLog feature' do

    describe 'index' do
    before do
        admin_user = FactoryGirl.create(:admin_user)
        login_as(admin_user, :scope => :user)
        FactoryGirl.create(:audit_log)
    end


    describe 'index' do
        it 'has an index page that can be viewed' do
        visit audit_logs_path
        expect(page.status_code).to eq(200)
    end

    it 'renders audit log content' do 
        visit audit_logs_path
  expect(page).to have_content(/SNOW/)
    end
  end
end
end