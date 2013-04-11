require 'spec_helper'

describe MessagesController do 
  context 'routing' do
    it {should route(:get, '/messages/new').to :action => :new}
    it {should route(:post, '/messages').to :action => :create}
    it {should route(:get, '/messages/1').to :action => :show, :id => 1}
    it {should route(:get, '/messages/1/edit').to :action => :edit, :id => 1}
    it {should route(:put, '/messages/1').to :action => :update, :id => 1}
    it {should route(:delete, '/messages/1').to :action => :destroy, :id => 1}
    it {should route(:get, '/messages').to :action => :index}
  end

  context 'GET new' do
    before {get :new}

    it {should render_template :new}
  end

  context 'POST create' do
    let(:rocketeer) {FactoryGirl.create :rocketeer}    
    let(:valid_attributes) {{subject: 'hi', text: 'soccer', public: true}}
    let(:valid_parameters) {{message: valid_attributes}}
    before {sign_in rocketeer}
    before {post :create, valid_parameters}

    it {should redirect_to messages_path} #change this
  end
end
