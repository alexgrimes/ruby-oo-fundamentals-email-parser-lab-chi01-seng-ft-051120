# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
  
class EmailAddressParser 
   
  # getter and setter attributes name and emails (name neccessary?)
  
  attr_accessor :name, :csv_emails
    
   # initialize method that takes argument of emails string 

    def initialize(csv_emails)
      @name = name
      @csv_emails = csv_emails
    end 

    # parse method separate (.split) and gather (enumerable? .collect) through 
    # the emails |address|, 
    # separate values by their commas(split (',')).
    # into a single array, no duplicates (flatten)
  
    def parse 
      csv_emails.split.collect do |address|
        address.split(',') 
        binding.pry 
      end
      .flatten.uniq 
    end 
end 