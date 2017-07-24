require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe NounsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Noun. As you add validations to Noun, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NounsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all nouns as @nouns" do
      noun = Noun.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:nouns)).to eq([noun])
    end
  end

  describe "GET #show" do
    it "assigns the requested noun as @noun" do
      noun = Noun.create! valid_attributes
      get :show, params: {id: noun.to_param}, session: valid_session
      expect(assigns(:noun)).to eq(noun)
    end
  end

  describe "GET #new" do
    it "assigns a new noun as @noun" do
      get :new, params: {}, session: valid_session
      expect(assigns(:noun)).to be_a_new(Noun)
    end
  end

  describe "GET #edit" do
    it "assigns the requested noun as @noun" do
      noun = Noun.create! valid_attributes
      get :edit, params: {id: noun.to_param}, session: valid_session
      expect(assigns(:noun)).to eq(noun)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Noun" do
        expect {
          post :create, params: {noun: valid_attributes}, session: valid_session
        }.to change(Noun, :count).by(1)
      end

      it "assigns a newly created noun as @noun" do
        post :create, params: {noun: valid_attributes}, session: valid_session
        expect(assigns(:noun)).to be_a(Noun)
        expect(assigns(:noun)).to be_persisted
      end

      it "redirects to the created noun" do
        post :create, params: {noun: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Noun.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved noun as @noun" do
        post :create, params: {noun: invalid_attributes}, session: valid_session
        expect(assigns(:noun)).to be_a_new(Noun)
      end

      it "re-renders the 'new' template" do
        post :create, params: {noun: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested noun" do
        noun = Noun.create! valid_attributes
        put :update, params: {id: noun.to_param, noun: new_attributes}, session: valid_session
        noun.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested noun as @noun" do
        noun = Noun.create! valid_attributes
        put :update, params: {id: noun.to_param, noun: valid_attributes}, session: valid_session
        expect(assigns(:noun)).to eq(noun)
      end

      it "redirects to the noun" do
        noun = Noun.create! valid_attributes
        put :update, params: {id: noun.to_param, noun: valid_attributes}, session: valid_session
        expect(response).to redirect_to(noun)
      end
    end

    context "with invalid params" do
      it "assigns the noun as @noun" do
        noun = Noun.create! valid_attributes
        put :update, params: {id: noun.to_param, noun: invalid_attributes}, session: valid_session
        expect(assigns(:noun)).to eq(noun)
      end

      it "re-renders the 'edit' template" do
        noun = Noun.create! valid_attributes
        put :update, params: {id: noun.to_param, noun: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested noun" do
      noun = Noun.create! valid_attributes
      expect {
        delete :destroy, params: {id: noun.to_param}, session: valid_session
      }.to change(Noun, :count).by(-1)
    end

    it "redirects to the nouns list" do
      noun = Noun.create! valid_attributes
      delete :destroy, params: {id: noun.to_param}, session: valid_session
      expect(response).to redirect_to(nouns_url)
    end
  end

end
