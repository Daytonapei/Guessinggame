math.randomseed(os.time())

local userContinue = "yes"

while userContinue == "yes" do

    local computerNumber = math.random(1, 100)
    local attempts = 7

    print("I picked a number between 1 and 100.")
    print("You have 7 attempts to guess it.")

    while attempts > 0 do
        print("Enter your guess:")
        local input = io.read()
        local guess = tonumber(input)

        -- Error handling
        if guess == nil then
            print("Please enter a valid number.")
        else
            if guess == computerNumber then
                print("You win! You guessed the number!")
                attempts = 0 
            elseif guess < computerNumber then
                print("Too low!")
                attempts = attempts - 1
            else
                print("Too high!")
                attempts = attempts - 1
            end
        end
    end

    if guess ~= computerNumber then
        print("You lose! The correct number was " .. computerNumber)
    end
end