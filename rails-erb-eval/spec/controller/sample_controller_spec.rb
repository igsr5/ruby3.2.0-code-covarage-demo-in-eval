require "rails_helper"
require "coverage"

RSpec.describe SampleController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      Coverage.start(lines: true, eval: true)
      get :index
      expect(response).to render_template("index")
      p Coverage.result
    end
  end
end
