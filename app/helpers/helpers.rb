class Helpers
  #These two methods will only ever be called in views in order to add double protection to this view so that only the current user, when they are logged in, can see their bank account balance. Helpers are methods that make it cleaner to add logic to our views.
  
  def self.current_user(session_hash)
    @user = User.find(session_hash[:user_id])
  end 
  
  def self.is_logged_in?(session_hash)
    !!session_hash[:user_id]
  end
end