class TestsController < ApplicationController
  def index
    @tests = Test.all
    tests = @tests.map { |test| test.title.to_s }
    render plain: tests
  end
end
