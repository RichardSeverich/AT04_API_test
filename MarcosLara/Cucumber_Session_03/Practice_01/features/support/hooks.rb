Before ('@ScenarioOutline') do
  puts 'Executing outline scenario'
end

Before ('@ScenarioNormal') do
  puts 'Executing normal scenario'
end

After ('@ScenarioOutline') do
  puts 'Finalizing outline scenario'
end

After ('@ScenarioNormal') do
  puts 'Finalizing normal scenario'
end

Before('@ScenarioOutline', '@ScenarioNormal') do
  puts 'Before normal and outline scenario'
end

Before('@ScenarioOutline', '~@ScenarioNormal') do
  puts 'Before outline and not normal scenario'
end
