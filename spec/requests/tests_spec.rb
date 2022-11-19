# == Schema Information
#
# Table name: tests
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  slug         :string
#  name         :string(255)      not null
#  title        :string(255)
#  code         :string(255)      not null
#  cpt_codes    :text             default([]), is an Array
#  shown        :boolean          default(TRUE), not null
#  available    :boolean          default(TRUE), not null
#  published_at :datetime
#
# Indexes
#
#  index_tests_on_slug  (slug) UNIQUE
#
require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/tests", type: :request do
  
  # Test. As you add validations to Test, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Test.create! valid_attributes
      get tests_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      test = Test.create! valid_attributes
      get test_url(test)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_test_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      test = Test.create! valid_attributes
      get edit_test_url(test)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Test" do
        expect {
          post tests_url, params: { test: valid_attributes }
        }.to change(Test, :count).by(1)
      end

      it "redirects to the created test" do
        post tests_url, params: { test: valid_attributes }
        expect(response).to redirect_to(test_url(Test.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Test" do
        expect {
          post tests_url, params: { test: invalid_attributes }
        }.to change(Test, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post tests_url, params: { test: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested test" do
        test = Test.create! valid_attributes
        patch test_url(test), params: { test: new_attributes }
        test.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the test" do
        test = Test.create! valid_attributes
        patch test_url(test), params: { test: new_attributes }
        test.reload
        expect(response).to redirect_to(test_url(test))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        test = Test.create! valid_attributes
        patch test_url(test), params: { test: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested test" do
      test = Test.create! valid_attributes
      expect {
        delete test_url(test)
      }.to change(Test, :count).by(-1)
    end

    it "redirects to the tests list" do
      test = Test.create! valid_attributes
      delete test_url(test)
      expect(response).to redirect_to(tests_url)
    end
  end
end
