require 'spec_helper'

describe RocketeersController do
  
  context 'routing' do
    it {should route(:get, '/home').to :action => :show}
    it {should route(:get, '/rocketeers').to :action => :index}
  end

  context 'GET index' do
    before {get :index}

    it {should render_template :index}
  end

  context 'GET show' do
    let(:rocketeer) {FactoryGirl.create :rocketeer} 

    before {sign_in rocketeer}
    before {get :show, :id => rocketeer.id}

    it {should render_template :show}
  end

end