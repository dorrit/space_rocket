require 'spec_helper'

describe ContactDetailsController do 
  context 'routing' do
    it {should route(:get, '/contact_details/new').to :action => :new}
    it {should route(:post, '/contact_details').to :action => :create}
    it {should route(:get, '/contact_details/1').to :action => :show, :id => 1}
    it {should route(:get, '/contact_details/1/edit').to :action => :edit, :id => 1}
    it {should route(:put, '/contact_details/1').to :action => :update, :id => 1}
    it {should route(:delete, '/contact_details/1').to :action => :destroy, :id => 1}
    it {should route(:get, '/contact_details').to :action => :index}
  end

  context 'GET new' do
    before {get :new}

    it {should render_template :new}
  end

  context 'POST create' do
    let(:valid_attributes) {{first_name: 'hi', last_name: 'soccer', phone: 'some job', email: 'some@job.com', apartment_number: '24'}}
    let(:valid_parameters) {{contact_detail: valid_attributes}}


    before {post :create, valid_parameters}

    it {should redirect_to new_contact_detail_path} #change this
  end
end
