Factory.sequence :item_name do |n|
  "Item #{n}"
end


Factory.define :item do |i|
  i.name Factory.next :item_name
end