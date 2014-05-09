class Spree::ContactUsConfiguration < Spree::Preferences::Configuration
  preference :contact_tracking_message, :string, default: nil
end

Spree::AppConfiguration.class_eval do
  preference :contact_us_to_email, :string, default: nil
end
