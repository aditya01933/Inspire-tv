require 'csv'    

# activerecord-import gem is sufficient for files with
# few million lines. In case of lines more than that,
# CSV can pe processed in batches by breaking into chunks.

Quote.transaction do
  quotes = CSV.read("#{Rails.root}/db/quotes.csv", :col_sep => ";")
  columns = [:body, :author, :genre]
  Quote.import columns, quotes, validate: false
end
