Factory.define :project do |p|
  p.name 'John'
  p.owner_email  'Doe'
  p.owner_organization  'Doe'
  p.items do
    instances = []
    rand(10).times {instances << Factory.build(:item)}
    instances
  end
end