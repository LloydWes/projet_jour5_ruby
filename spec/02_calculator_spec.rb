require_relative '../lib/02_calculator'

describe "add" do
  it "adds 0 and 0" do
    expect(add(0,0)).to eq(0)
  end

  it "adds 2 and 2" do
    expect(add(2,2)).to eq(4)
  end

  it "adds positive numbers" do
    expect(add(2,6)).to eq(8)
  end
end

describe "subtract" do
  it "subtracts numbers" do
    expect(subtract(10,4)).to eq(6)
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    expect(sum([])).to eq(0)
  end

  it "computes the sum of an array of one number" do
    expect(sum([7])).to eq(7)
  end

  it "computes the sum of an array of two numbers" do
    expect(sum([7,11])).to eq(18)
  end

  it "computes the sum of an array of many numbers" do
    expect(sum([1,3,5,7,9])).to eq(25)
  end
end

# Let's write some tests !
# we'll show you the first, you will write the others :)

describe "#multiply" do

  it "multiplies two numbers" do
    expect(multiply(3, 4)).to eq(12)
  end

  it "multiplies two other numbers" do
    expect(multiply(3, 1.3)).to eq(3.9)
    # one other test here, don't forget do end ;)
  end

  it "multiplies two other numbers, one of them being 0" do
    expect(multiply(5,0)).to eq(0)
    # one last test, with 0 in it
  end
end

describe "#power" do
  it "raises one number to the power of another number" do
    expect(power(2,2)).to eq(4)
  end

  it "raises 0 to the power of 0 (should return 1)" do
    expect(power(0,0)).to eq(1)
  end

  it "raises o0 to the power of 1 (should return 0)" do
    expect(power(0,1)).to eq(0)
  end

  it "raises one number to the power 0 (should return 1)" do
    expect(power(2,0)).to eq(1)
  end
end

# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do
  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(1)
  end
  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end
  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)
  end
  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)
  end
  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end
