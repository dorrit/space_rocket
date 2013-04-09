require 'spec_helper'

describe RocketeersController do
  
  context 'routing' do
    it {should route(:get, '/rocketeers/1').to :action => :show, :id => 1}
    it {should route(:get, '/rocketeers').to :action => :index}
  end

  context 'GET index' do
    before {get :index}

    it {should render_template :index}
  end

  context 'GET show' do
    let(:rocketeer) {FactoryGirl.create :rocketeer} 
    before {get :show, {:id => rocketeer.id}}

    it {should render_template :show}
  end

end