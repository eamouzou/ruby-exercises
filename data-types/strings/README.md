The `strings.rb` file has a number of exercises to help you better work with strings in ruby.  

Below is a list of methods that will help you complete the exercises - research each of them on the [Ruby Docs for Strings](https://ruby-doc.org/core-2.6.5/String.html) to learn more about what they do and how they are used.

There are additional methods that you will need to complete the exercises; each of these additional methods can be found in the Ruby Docs for Strings.

* `String#capitalize`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-capitalize)
* `String#concat`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-concat)
Concatenates the given object(s) to str. If an object is an Integer, it is considered a codepoint and converted to a character before concatenation.

concat can take multiple arguments, and all the arguments are concatenated in order.
a = "hello "
a.concat("world", 33)      #=> "hello world!"
a                          #=> "hello world!"

b = "sn"
b.concat("_", b, "_", b)   #=> "sn_sn_sn"
* `String#chomp`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chomp)
Returns a new String with the given record separator removed from the end of str (if present). If $/ has not been changed from the default Ruby record separator, then chomp also removes carriage return characters (that is it will remove \n, \r, and \r\n). If $/ is an empty string, it will remove all trailing newlines from the string.

"hello".chomp      #=> "hello"
"hello\n".chomp    #=> "hello"
"hello\r\n".chomp  #=> "hello"
"hello\n\r".chomp  #=> "hello\n"
"hello\r".chomp    #=> "hello"
"hello \n there".chomp    #=> "hello \n there"
"hello".chomp("llo")      #=> "he"
"hello\r\n\r\n".chomp('') #=> "hello"
"hello\r\n\r\r\n".chomp('')  #=> "hello\r\n\r"
* `String#chop`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chop)
Returns a new String with the last character removed. If the string ends with \r\n, both characters are removed. Applying chop to an empty string returns an empty string. String#chomp is often a safer alternative, as it leaves the string unchanged if it doesn't end in a record separator.
"string\r\n".chop   #=> "string"
"string\n\r".chop   #=> "string\n"
"string\n".chop     #=> "string"
"string".chop       #=> "strin"

* `String#delete`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-delete)
Returns a copy of str with all characters in the intersection of its arguments deleted. Uses the same rules for building the set of characters as String#count.

"hello".delete "l","lo"  #=> "heo"
"hello".delete "lo"      #=> "he"
"hello".delete "aeiou", "^e"                     #=> "hell"
"hello".delete "ej-m"    #=> "ho"
* `String#include?`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-include-3F)
* `String#length`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-length)
* `String#reverse`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-reverse)
* `String#sub`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-sub)
  sub replaces the first occurence of the pattern
  gsub replaces all occurences
* `String#strip`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-strip)
Returns a copy of the receiver with leading and trailing whitespace removed.

Whitespace is defined as any of the following characters: null, horizontal tab, line feed, vertical tab, form feed, carriage return, space.
you can rstrip to remove whitespace on right side of string and lstrip to remove whitespace on left side of string.

"    hello    ".strip   #=> "hello"
"\tgoodbye\r\n".strip   #=> "goodbye"
"\x00\t\n\v\f\r ".strip #=> ""
"hello".strip           #=> "hello"
* `String#upcase`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-upcase)

Here's a [companion piece to working through these exercises](https://josh.works/turing-backend-prep-02-first-tests-and-making-them-pass).

An alumn has put together [a video walkthrough](https://www.youtube.com/watch?v=BKqo2w0W7S0) for this `strings.rb` test, as well.

These two resources, combined, should help get you up and running.

Finally, you'll be getting your first introduction to `Minitest` in this file!

#### What is minitest?

When you cloned this repo and ran `bundle` you installed the `minitest`.  

Many of the `.rb` files in this repo begin with calling `minitest`, like:

```ruby
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StringTest < Minitest::Test
```
So what is minitest and what's going on above? Great question!

See the references to minitest at the top of the file? `minitest/autorun` and `minitest/pride`?

These are “modules” of the `minitest` gem.

I strongly recommend “pausing” this exercises and reading (and re-reading, and write all the code from all the examples in) this excellent guide: [https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest)

I’ll state that again. Read and study the Minitest guide. It is fantastic and will set you up for success for the rest of Turing:

[https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest](https://launchschool.com/blog/assert-yourself-an-introduction-to-minitest)

[...]

Did you read the Launch School post? Great! Then most of what is in this file should look a lot more readable to you.

As a quick test, answer the following questions:

- What is minitest?
- what is a Domain-Specific Language (DSL)?
- What does assert_equal mean? How many arguments does it expect?
- Will assert_equal true, "true" pass?
- How do you “run” a test file?
- is a “failing” test a bad thing?
- does minitest run all the tests in order?
- Find a list of minitest assertions (google it!). What’s a cool one you found?

Awesome. If you can answer all of those questions, you’ve got your head wrapped around Minitest. Onward!
