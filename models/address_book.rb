
 require_relative 'entry'
 require "csv"

class AddressBook
    attr_reader :entries

    def initialize
        @entries = []
      end


def add_entry(name, phone_number, email)
   
    index = 0
    entries.each do |entry|
   
      if name < entry.name
        break
      end
      index+= 1
    end

    entries.insert(index, Entry.new(name, phone_number, email))
  end


def import_from_csv(file_name)
    it "imports the 1st entry" do
        book.import_from_csv("entries.csv")
        # Check the first entry
        entry_one = book.entries[0]
  
        # #5
        expect(entry_one.name).to eq "Bill"
        expect(entry_one.phone_number).to eq "555-555-4854"
        expect(entry_one.email).to eq "bill@blocmail.com"
      end

      it "imports the 2nd entry" do
        book.import_from_csv("entries.csv")
        # Check the second entry
        entry_two = book.entries[1]
        expect(entry_two.name).to eq "Bob"
        expect(entry_two.phone_number).to eq "555-555-5415"
        expect(entry_two.email).to eq "bob@blocmail.com"
      end
  
      it "imports the 3rd entry" do
        book.import_from_csv("entries.csv")
        # Check the third entry
        entry_three = book.entries[2]
        expect(entry_three.name).to eq "Joe"
        expect(entry_three.phone_number).to eq "555-555-3660"
        expect(entry_three.email).to eq "joe@blocmail.com"
      end
  
      it "imports the 4th entry" do
        book.import_from_csv("entries.csv")
        # Check the fourth entry
        entry_four = book.entries[3]
        expect(entry_four.name).to eq  "Sally"
        expect(entry_four.phone_number).to eq "555-555-4646"
        expect(entry_four.email).to eq "sally@blocmail.com"
      end
  
      it "imports the 5th entry" do
        book.import_from_csv("entries.csv")
        # Check the fifth entry
        entry_five = book.entries[4]
        expect(entry_five.name).to eq "Sussie"
        expect(entry_five.phone_number).to eq "555-555-2036"
        expect(entry_five.email).to eq "sussie@blocmail.com"
      end
    end
end

def remove_entry(name, phone_number, email)
    delete_entry = nil
    entries.each do |entry|
        if name == entry.name && phone_number = entry.phone_number && email = entry.email
        delete_entry = entry
        end
    end
     entries.delete(delete_entry)
    end
end
