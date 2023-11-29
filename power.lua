local reader = peripheral.find("blockReader")

for k, v in ipairs(reader.getBlockData()) do
    advancedMonitor.write(k, v)
end
