class UsedCar

  def initialize(make, mileage)
    @make = make                 # => "Audi", "Audi"
    @mileage = mileage           # => 72000, 72000
  end                            # => :initialize

  def ==(other) #This overrides Ruby's == default!  We're comparing based on attributes now, and we have to explain to Ruby how to do that.
    if @make == other.make && @mileage == other.mileage #don't need if statement: this is boolean
      return true #so if these instance variables match, it returns true instead of default false
    else
      return false
    end
  end               # => :==

  def mileage
    return @mileage
  end                # => :mileage

  def make
    return @make
  end             # => :make
end               # => :make

audi = UsedCar.new("Audi",72000)    # => #<UsedCar:0x007feb5ba7bce8 @make="Audi", @mileage=72000>
audi2 = UsedCar.new("Audi", 72000)  # => #<UsedCar:0x007feb5ba7b2e8 @make="Audi", @mileage=72000>
audi == audi2 #Ruby interprets this as though written with this syntax: audi.==(audi2)
