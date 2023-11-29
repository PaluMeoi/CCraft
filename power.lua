local reader = peripheral.find("blockReader")

for k, v in ipairs(reader.getBlockData()) do
    print(k, v)
end
