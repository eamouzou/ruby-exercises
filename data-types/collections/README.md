The files in this directory contain several exercises for you to complete.

Before you begin, look at the Ruby Docs ([https://ruby-doc.org/core-2.6.5/](https://ruby-doc.org/core-2.6.5/)) for `Array` ([https://ruby-doc.org/core-2.6.5/Array.html](https://ruby-doc.org/core-2.6.5/Array.html)) and `Hash` ([https://ruby-doc.org/core-2.6.5/Hash.html](https://ruby-doc.org/core-2.6.5/Hash.html)).

Research the listed methods below for each exercise. You will need them to complete the exercises.

The exercises will require you to look up some additional methods not listed here.

An alum has put together a video walk-through of the `arrays.rb` and `advanced_nested_collections` exercise.

Please check them out - you'll learn how to use `binding.pry` to quickly test ideas and assumptions, as well as many other useful approaches to solving problems with code.

- `arrays.rb` walkthrough: [https://youtu.be/RUnd1Uu0AyE](https://youtu.be/RUnd1Uu0AyE)
- `advanced_nested_collections/nesting_test.rb` walkthrough: [https://youtu.be/9AaElA4elDU](https://youtu.be/9AaElA4elDU)


### Methods you'll need to use for `arrays.rb`
https://apidock.com/ruby/Array

A new array can be created by using the literal constructor []. Arrays can contain different types of objects. For example, the array below contains an Integer, a String and a Float:

ary = [1, "two", 3.0] #=> [1, "two", 3.0]
An array can also be created by explicitly calling Array.new with zero, one (the initial size of the Array) or two arguments (the initial size and a default object).

ary = Array.new    #=> []
Array.new(3)       #=> [nil, nil, nil]
Array.new(3, true) #=> [true, true, true]
Note that the second argument populates the array with references to the same object. Therefore, it is only recommended in cases when you need to instantiate arrays with natively immutable objects such as Symbols, numbers, true or false.

To create an array with separate objects a block can be passed instead. This method is safe to use with mutable objects such as hashes, strings or other arrays:

Array.new(4) { Hash.new }  #=> [{}, {}, {}, {}]
Array.new(4) {|i| i.to_s } #=> ["0", "1", "2", "3"]
This is also a quick way to build up multi-dimensional arrays:

empty_table = Array.new(3) { Array.new(3) }
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
An array can also be created by using the Array() method, provided by Kernel, which tries to call #to_ary, then #to_a on its argument.

Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]


* `[]` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-5B-5D))
Element Reference — Returns the element at index, or returns a subarray starting at the start index and continuing for length elements, or returns a subarray specified by range of indices.

Negative indices count backward from the end of the array (-1 is the last element). For start and range cases the starting index is just before an element. Additionally, an empty array is returned when the starting index for an element range is at the end of the array.

Returns nil if the index (or starting index) are out of range.

a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[1..3]                #=> [ "b", "c", "d" ]
a[4..7]                #=> [ "e" ]

* `Accessing Elements` ([docs](https://docs.ruby-lang.org/en/2.0.0/Array.html#class-Array-label-Accessing+Elements)

Elements in an array can be retrieved using the #[] method. It can take a single integer argument (a numeric index), a pair of arguments (start and length) or a range.

arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]

Another way to access a particular array element is by using the at method

arr.at(0) #=> 1
`The slice method works in an identical manner to #[].`

To raise an error for indices outside of the array bounds or else to provide a default value when that happens, you can use fetch.

arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(100) #=> IndexError: index 100 outside of array bounds: -6...6
arr.fetch(100, "oops") #=> "oops"

The special methods first and last will return the first and last elements of an array, respectively.

arr.first #=> 1
arr.last  #=> 6

* `insert` ([docs](https://ruby-doc.org/core-2.5.0/Array.html#method-i-insert)

Inserts the given values before the element with the given index.

Negative indices count backwards from the end of the array, where -1 is the last element. If a negative index is used, the given values will be inserted after that element, so using an index of -1 will insert the values at the end of the array.

a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

* `take` ([docs](https://docs.ruby-lang.org/en/2.0.0/Array.html#class-Array-label-Accessing+Elements)

To return the first n elements of an array, use take

arr.take(3) #=> [1, 2, 3]

* `drop` ([docs](https://docs.ruby-lang.org/en/2.0.0/Array.html#class-Array-label-Accessing+Elements)

drop does the opposite of take, by returning the elements after n elements have been dropped:

arr.drop(3) #=> [4, 5, 6]

* `[]=` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-5B-5D-3D))

Element Assignment — Sets the element at index, or replaces a subarray from the start index for length elements, or replaces a subarray specified by the range of indices.

If indices are greater than the current capacity of the array, the array grows automatically. Elements are inserted into the array at start if length is zero.

Negative indices will count backward from the end of the array. For start and range cases the starting index is just before an element.

An IndexError is raised if a negative index points past the beginning of the array.

See also #push, and #unshift.

a = Array.new
a[4] = "4";                 #=> [nil, nil, nil, nil, "4"]
a[0, 3] = [ 'a', 'b', 'c' ] #=> ["a", "b", "c", nil, "4"]
a[1..2] = [ 1, 2 ]          #=> ["a", 1, 2, nil, "4"]
a[0, 2] = "?"               #=> ["?", 2, nil, "4"]
a[0..2] = "A"               #=> ["A", "4"]
a[-1]   = "Z"               #=> ["A", "Z"]
a[1..-1] = nil              #=> ["A", nil]
a[1..-1] = []               #=> ["A"]
a[0, 0] = [ 1, 2 ]          #=> [1, 2, "A"]
a[3, 0] = "B"               #=> [1, 2, "A", "B"]
* `<<` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-3C-3C))

Append—Pushes the given object on to the end of this array. This expression returns the array itself, so several appends may be chained together.

a = [ 1, 2 ]
a << "c" << "d" << [ 3, 4 ]
        #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]
a
        #=>  [ 1, 2, "c", "d", [ 3, 4 ] ]
* `push` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-push))

Append — Pushes the given object(s) on to the end of this array. This expression returns the array itself, so several appends may be chained together. See also Array#pop for the opposite effect.

a = [ "a", "b", "c" ]
a.push("d", "e", "f")
        #=> ["a", "b", "c", "d", "e", "f"]
* `pop` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-pop))

Removes the last element from self and returns it, or nil if the array is empty.

If a number n is given, returns an array of the last n elements (or less) just like array.slice!(-n, n) does. See also Array#push for the opposite effect.

a = [ "a", "b", "c", "d" ]
a.pop     #=> "d"
a.pop(2)  #=> ["b", "c"]
a         #=> ["a"]
* `length`/size ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-length))
* `rotate` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-rotate))

Returns a new array by rotating self so that the element at count is the first element of the new array.

If count is negative then it rotates in the opposite direction, starting from the end of self where -1 is the last element.

a = [ "a", "b", "c", "d" ]
a.rotate         #=> ["b", "c", "d", "a"]
a                #=> ["a", "b", "c", "d"]
a.rotate(2)      #=> ["c", "d", "a", "b"]
a.rotate(-3)     #=> ["b", "c", "d", "a"]
* `include`? ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-include-3F))
Returns true if the given object is present in self (that is, if any element == object), otherwise returns false.
* `flatten` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-flatten))

Returns a new array that is a one-dimensional flattening of self (recursively).

That is, for every element that is an array, extract its elements into the new array.

The optional level argument determines the level of recursion to flatten.

s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
a.flatten                 #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a = [ 1, 2, [3, [4, 5] ] ]
a.flatten(1)              #=> [1, 2, 3, [4, 5]]
* `compact` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-compact))

Returns a copy of self with all nil elements removed.

[ "a", nil, "b", nil, "c", nil ].compact
                  #=> [ "a", "b", "c" ]
* `join` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-join))

Returns a string created by converting each element of the array to a string, separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses an empty string.

[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"
For nested arrays, join is applied recursively:

[ "a", [1, 2, [:x, :y]], "b" ].join("-")   #=> "a-1-2-x-y-b"
* `shift` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-shift))

Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty.

If a number n is given, returns an array of the first n elements (or less) just like array.slice!(0, n) does. With ary containing only the remainder elements, not including what was shifted to new_ary. See also Array#unshift for the opposite effect.

args = [ "-m", "-q", "filename" ]
args.shift     #=> "-m"
args           #=> ["-q", "filename"]

args = [ "-m", "-q", "filename" ]
args.shift(2)  #=> ["-m", "-q"]
args           #=> ["filename"]
* `unshift` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-unshift))

Prepends objects to the front of self, moving other elements upwards. See also Array#shift for the opposite effect.

a = [ "b", "c", "d" ]
a.unshift("a")   #=> ["a", "b", "c", "d"]
a.unshift(1, 2)  #=> [ 1, 2, "a", "b", "c", "d"]

* `reverse` ([docs](https://ruby-doc.org/core-2.5.0/Array.html#method-i-reverse)
Reverses self in place.

a = [ "a", "b", "c" ]
a.reverse!       #=> ["c", "b", "a"]
a                #=> ["c", "b", "a"]

### methods you'll need to use for `hashes.rb`

https://ruby-doc.org/core-2.6.5/Hash.html



* `new(default)` - this version of .new gives the hash default values

If obj is specified, this single object will be used for all default values. If a block is specified, it will be called with the hash object and the key, and should return the default value. It is the block's responsibility to store the value in the hash if required.

h = Hash.new("Go Fish")
h["a"] = 100
h["b"] = 200
h["a"]           #=> 100
h["c"]           #=> "Go Fish"
# The following alters the single default object
h["c"].upcase!   #=> "GO FISH"
h["d"]           #=> "GO FISH"
h.keys           #=> ["a", "b"]

# While this creates a new default object each time
h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
h["c"]           #=> "Go Fish: c"
h["c"].upcase!   #=> "GO FISH: C"
h["d"]           #=> "Go Fish: d"
h.keys           #=> ["c", "d"]
* `[]`

Element Reference—Retrieves the value object corresponding to the key object. If not found, returns the default value (see Hash::new for details).

h = { "a" => 100, "b" => 200 }
h["a"]   #=> 100
h["c"]   #=> nil
* `[]=`

Element Assignment¶ ↑
Associates the value given by value with the key given by key.

h = { "a" => 100, "b" => 200 }
h["a"] = 9
h["c"] = 4
h   #=> {"a"=>9, "b"=>200, "c"=>4}
h.store("d", 42) #=> 42
h   #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
key should not have its value changed while it is in use as a key (an unfrozen String passed as a key will be duplicated and frozen).

a = "a"
b = "b".freeze
h = { a => 100, b => 200 }
h.key(100).equal? a #=> false
h.key(200).equal? b #=> true
* `delete`

Deletes the key-value pair and returns the value from hsh whose key is equal to key. If the key is not found, it returns nil. If the optional code block is given and the key is not found, pass in the key and return the result of block.

h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
* `keys`

Returns a new array populated with the keys from this hash. See also Hash#values.

h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
h.keys   #=> ["a", "b", "c", "d"]
* `values`

Returns a new array populated with the values from hsh. See also Hash#keys.

h = { "a" => 100, "b" => 200, "c" => 300 }
h.values   #=> [100, 200, 300]
* `length/size`

Returns the number of key-value pairs in the hash.

h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
h.length        #=> 4
h.delete("a")   #=> 200
h.length        #=> 3

* `invert`

Returns a new hash created by using hsh's values as keys, and the keys as values.

h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}
