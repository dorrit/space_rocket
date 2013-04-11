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

  context 'DELETE destroy' do
    it 'destroys a rocketeer' do
      rocketeer = FactoryGirl.create :rocketeer
      expect {delete :destroy, {:id => rocketeer.id}}.to change(Rocketeer, :count).by(-1)
    end

    let(:rocketeer) {FactoryGirl.create :rocketeer}
    before {delete :destroy, {:id => rocketeer.id}}

    it {should redirect_to rocketeers_path}
  end

end