require 'spec_helper'

describe ProfilesController do 
  context 'routing' do
    it {should route(:get, '/profiles/new').to :action => :new}
    it {should route(:post, '/profiles').to :action => :create}
    it {should route(:get, '/profiles/1').to :action => :show, :id => 1}
    it {should route(:get, '/profiles/1/edit').to :action => :edit, :id => 1}
    it {should route(:put, '/profiles/1').to :action => :update, :id => 1}
    it {should route(:delete, '/profiles/1').to :action => :destroy, :id => 1}
    it {should route(:get, '/profiles').to :action => :index}
  end

  context 'GET new' do
    before {get :new}

    it {should render_template :new}
  end

  context 'POST create' do
    let(:valid_attributes) {{bio: 'hi', hobby: 'soccer', work: 'some job'}}
    let(:valid_parameters) {{contact: valid_attributes}}

    before {post :create, valid_parameters}

    it {should redirect_to home_path} #change this
  end
end
