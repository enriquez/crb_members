# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_crb_member_site_session',
  :secret      => '49d1623cc6cd8c3addebb446df3b4038d389ef0302013ccf9746e12b08e2747d333aff1af8f581945f4bff1635f93388f00b41259ea39d0b791e5ce53a55ea06'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
