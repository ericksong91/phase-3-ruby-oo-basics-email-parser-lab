# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser 
    def initialize(emails)
        @emails = emails
    end

    def parse
        new_array = @emails.tr(',',' ').split

        new_array_2 = new_array.union(new_array)

        puts new_array_2
        new_array_2
    end

end

email_addresses = "john@doe.com, person@somewhere.org"
parser = EmailAddressParser.new(email_addresses)

parser.parse