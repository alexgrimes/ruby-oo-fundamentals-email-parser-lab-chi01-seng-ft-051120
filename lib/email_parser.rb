# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
  
class EmailAddressParser 
    attr_accessor :name, :csv_emails
    
    def initialize(csv_emails)
      @name = name
      @csv_emails = csv_emails
    end 
  
#binding.pry
  
    def parse 
      csv_emails.split.collect do |address|
        address.split(',') 
      end
      .flatten.uniq 
    end 
end 
  
#   emails1 = "asd@qw.com, per@er.org, Zaza@sugar.net"
#   parser1 = EmailAddressParser.new(emails1)
#   parser1.parse 
  
#   emails2 = "asd@qw.com per@er.org per@er.org Zaza@sugar.net"
#   parser2 = EmailParser.new(emails2)
#   parser2.parse