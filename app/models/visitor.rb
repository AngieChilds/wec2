class Visitor < ActiveRecord::Base
has_no_table
column :email, :string
validates_presence_of :email
validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
def subscribe
mailchimp = Gibbon::API.new("7c304b2da2bdb8123d4256a5c62d1812-us8")
result = mailchimp.lists.subscribe({
:id => "aeca627dea",
:email => {:email => self.email},
:double_optin => false,
:update_existing => true,
:send_welcome => true
})
Rails.logger.info("Subscribed #{self.email} to MailChimp") if result
end
end
