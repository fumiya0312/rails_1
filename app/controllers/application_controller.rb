class ApplicationController < ActionController::Base
  def hello
    render html: "hello hello"
  end
end
