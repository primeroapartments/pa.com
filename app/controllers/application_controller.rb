class ApplicationController < ActionController::Base
  def allow_same_site
    response.headers['Set-Cookie'] = 'Secure;SameSite=None'
  end
end
