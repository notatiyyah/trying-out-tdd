require "fizzbuzz"

describe "fizzbuzz" do
    
    it "returns 'Fizz' when passed 3" do
        expect(fizzbuzz(3)).to eq "Fizz"
    end
    
    it "returns 'Buzz' when passed 5" do
        expect(fizzbuzz(5)).to eq "Buzz"
    end

    it "returns 'FizzBuzz' when passed 15" do
        expect(fizzbuzz(15)).to eq "FizzBuzz"
    end

    it "returns appropriate array when passed numbers 0-20" do
        expected_result = ["1",
            "2",
            "Fizz",
            "4",
            "Buzz",
            "Fizz",
            "7",
            "8",
            "Fizz",
            "Buzz",
            "11",
            "Fizz",
            "13",
            "14",
            "FizzBuzz",
            "16",
            "17",
            "Fizz",
            "19",
            "Buzz"]
        result = []
        (1..20).each { |number| result.push(fizzbuzz(number)) }
        expect(result).to eq expected_result
    end
end