local userContinue = "yes"

math.randomseed(os.time())

while userContinue == "yes" do
    local computerNumber = math.random(1,100)
    local attempt = 7

    print("pick a number between 1 and 100")
    print("you have 8 attempt to guess it")

    while attempt > 0 do
        print("Enter your guess:")
        local input = io.read()
        local guess = tonumber(input)
    end
end
