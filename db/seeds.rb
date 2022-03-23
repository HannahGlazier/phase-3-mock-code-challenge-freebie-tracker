Company.destroy_all
Dev.destroy_all 
Freebie.destroy_all


puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
Freebie.create(item_name: "Hat", value: 10, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Mug", value: 5, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Mousepad", value: 8, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Shirt", value: 20, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Scarf", value: 9, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Keyboard", value: 100, company_id: Company.ids.sample, dev_id: Dev.ids.sample)
Freebie.create(item_name: "Mouse", value: 80, company_id: Company.ids.sample, dev_id: Dev.ids.sample)

puts "Seeding done!"
