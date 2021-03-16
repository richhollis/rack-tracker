module Rack::Tracker::CspHelper
  def content_security_policy_nonce
    env["action_dispatch.content_security_policy_nonce"] ||
    env["secure_headers_content_security_policy_nonce"]
  end

  def nonce_property
    return unless nonce = content_security_policy_nonce
    "nonce=\"#{nonce}\""
  end
end