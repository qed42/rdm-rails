class UserSession < Authlogic::Session::Base
  # specify configuration here, such as:
  # logout_on_timeout true
  # ...many more options in the documentation
  generalize_credentials_error_messages true
  find_by_login_method :find_by_username_or_email
  remember_me true
end
