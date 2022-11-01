class Api::V1::GreetingsController < ApplicationController
    def index
      greeting = Message.find_by(id: rand(1..5))
      if greeting
        render json: greeting
      else
        render json: greeting.errors, status: :bad_request
      end
    end
  end
