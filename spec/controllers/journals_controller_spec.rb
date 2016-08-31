require 'rails_helper'

describe JournalsController do

  # This should return the minimal set of attributes required to create a valid
  # Journal. As you add validations to Journal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JournalsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all journals as @journals" do
      journal = Journal.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:journals)).to eq([journal])
    end
  end

  describe "GET #show" do
    it "assigns the requested journal as @journal" do
      journal = Journal.create! valid_attributes
      get :show, params: {id: journal.to_param}, session: valid_session
      expect(assigns(:journal)).to eq(journal)
    end
  end

  describe "GET #new" do
    it "assigns a new journal as @journal" do
      get :new, params: {}, session: valid_session
      expect(assigns(:journal)).to be_a_new(Journal)
    end
  end

  describe "GET #edit" do
    it "assigns the requested journal as @journal" do
      journal = Journal.create! valid_attributes
      get :edit, params: {id: journal.to_param}, session: valid_session
      expect(assigns(:journal)).to eq(journal)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Journal" do
        expect {
          post :create, params: {journal: valid_attributes}, session: valid_session
        }.to change(Journal, :count).by(1)
      end

      it "assigns a newly created journal as @journal" do
        post :create, params: {journal: valid_attributes}, session: valid_session
        expect(assigns(:journal)).to be_a(Journal)
        expect(assigns(:journal)).to be_persisted
      end

      it "redirects to the created journal" do
        post :create, params: {journal: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Journal.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved journal as @journal" do
        post :create, params: {journal: invalid_attributes}, session: valid_session
        expect(assigns(:journal)).to be_a_new(Journal)
      end

      it "re-renders the 'new' template" do
        post :create, params: {journal: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested journal" do
        journal = Journal.create! valid_attributes
        put :update, params: {id: journal.to_param, journal: new_attributes}, session: valid_session
        journal.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested journal as @journal" do
        journal = Journal.create! valid_attributes
        put :update, params: {id: journal.to_param, journal: valid_attributes}, session: valid_session
        expect(assigns(:journal)).to eq(journal)
      end

      it "redirects to the journal" do
        journal = Journal.create! valid_attributes
        put :update, params: {id: journal.to_param, journal: valid_attributes}, session: valid_session
        expect(response).to redirect_to(journal)
      end
    end

    context "with invalid params" do
      it "assigns the journal as @journal" do
        journal = Journal.create! valid_attributes
        put :update, params: {id: journal.to_param, journal: invalid_attributes}, session: valid_session
        expect(assigns(:journal)).to eq(journal)
      end

      it "re-renders the 'edit' template" do
        journal = Journal.create! valid_attributes
        put :update, params: {id: journal.to_param, journal: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested journal" do
      journal = Journal.create! valid_attributes
      expect {
        delete :destroy, params: {id: journal.to_param}, session: valid_session
      }.to change(Journal, :count).by(-1)
    end

    it "redirects to the journals list" do
      journal = Journal.create! valid_attributes
      delete :destroy, params: {id: journal.to_param}, session: valid_session
      expect(response).to redirect_to(journals_url)
    end
  end

end
