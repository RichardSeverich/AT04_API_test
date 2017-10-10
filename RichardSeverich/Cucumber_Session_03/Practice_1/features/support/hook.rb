Before ('@ScenarioOutline') do
  puts 'BEFORE SCENARIO OUTLINE'
end

Before ('@ScenarioNormal') do
  puts 'BEFORE SCENARIO NORMAL'
end

After ('@ScenarioOutline') do
  puts 'AFTER SCENARIO OUTLINE'
end

After ('@ScenarioNormal') do
  puts 'AFTER SCENARIO NORMAL'
end

Before('@ScenarioOutline', '@ScenarioNormal') {puts 'BEFORE OF SCENARIO NORMAL AND OUTLINE'}
Before('@ScenarioOutline', '~@ScenarioNormal') {puts 'BEFORE OF SCENARIO OUTLINE BUT NOT NORMAL'}
