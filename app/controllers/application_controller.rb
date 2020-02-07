class ApplicationController < ActionController::Base
  def hello
    render html: "hello, PA rails 1!"
  end
end
