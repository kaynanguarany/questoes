require "rails_helper"

RSpec.describe "Login", type: :routing do
  describe "routing" do
    it "routes to login page" do
      expect(get: "/log_in").to route_to("sessions#new")
    end

    it "routes to sign_up page" do
      expect(get: "/sign_up").to route_to("users#new")
    end

    it "routes to log_out" do
      expect(get: "/log_out").to route_to("sessions#destroy")
    end

    it "routes to root" do
      expect(get: "/").to route_to("home#index")
    end

  end
end
