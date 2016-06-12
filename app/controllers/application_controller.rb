class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_cache_headers

  def set_cache_headers
    response.headers["Chache-Control"] = 'no-chache, no-store, max-age=0, must-revalidate'
    response.headers["Pragma"] = "no-chache"
    response.header["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end
end
