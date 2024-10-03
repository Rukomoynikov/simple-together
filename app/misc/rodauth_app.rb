class RodauthApp < Rodauth::Rails::App
  # primary configuration
  configure RodauthMain

  # secondary configuration
  # configure RodauthAdmin, :admin

  route do |r|
    rodauth.load_memory # autologin remembered users

    r.rodauth # route rodauth requests

    # ==> Authenticating requests
    # Call `rodauth.require_account` for requests that you want to
    # require authentication for. For example:
    #
    # # authenticate /dashboard/* and /account/* requests
    # if r.path.start_with?("/dashboard") || r.path.start_with?("/account")
    #   rodauth.require_account
    # end

    # ==> Secondary configurations
    # r.rodauth(:admin) # route admin rodauth requests

    # create_verify_account_email do
    #   RodauthMailer.verify_account(self.class.configuration_name, account_id, verify_account_key_value)
    # end
    # create_reset_password_email do
    #   RodauthMailer.reset_password(self.class.configuration_name, account_id, reset_password_key_value)
    # end
    # create_verify_login_change_email do |_login|
    #   RodauthMailer.verify_login_change(self.class.configuration_name, account_id, verify_login_change_key_value)
    # end
  end
end
