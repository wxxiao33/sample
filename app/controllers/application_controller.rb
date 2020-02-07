class ApplicationController < ActionController::Base
  def hello
    render html :"Hello PA Rails"
  end
end
