# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_quotable_session',
  :secret      => '399d8310a61e9c368a1025b63aa4dc511d158c6655300b0e3c710926664ed6c3ffe34b9f64640e73e19ce1cd1bf541093f5335072ff206a25a8fd51abb07db1f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
