[![Build Status](https://travis-ci.org/AlexAvlonitis/greek-cities.svg?branch=master)](https://travis-ci.org/AlexAvlonitis/greek-cities)

# greek-cities ruby gem
Includes all the states (nomous) of Greece and their biggest cities, displayed in greek.
Easy way to populate Rails forms with greek cities.

## Install the gem
```ruby
# Rails
gem 'greek-cities'

# Ruby
gem install 'greek-cities'
require 'gc'
```

## List of all states
```ruby
GC.states
# => [["Αιτωλοακαρνανίας", "ait"], ["Αργολίδας", "arg"], ["Αρκαδίας", "ark"]...

```
*Returns all the states with their corresponding codes.*

## List of cities
```ruby
GC.cities("arg")
# => [["Άργος - Μυκήνες", "argos-mikines-ARG"], ["Επίδαυρος", "epidavros-ARG"], ["Κρανίδι", "kranidi-ARG"], ["Ναύπλιο", "nafplio-ARG"]]

```

## Fetch a state name in Greek
```ruby
GC.get_state_name('ait')
# => "Αιτωλοακαρνανίας"
```

## Fetch a city name in Greek
```ruby
GC.get_city_name('att', 'holargos-ATT')
# => "Χολαργός"
```
*Enter a state code as an argument. It's not case sensitive, you could enter "ARG".*

## Rails examples
```
<%= options_for_select GC.states %>

# output:

<option value="ait">Αιτωλοακαρνανίας</option>
<option value="arg">Αργολίδας</option>
...
```
```
<%= options_for_select GC.cities('arg')%>

# output:

<option value="argos-mikines-ARG">Άργος - Μυκήνες</option>
<option value="epidavros-ARG">Επίδαυρος</option>
...
```

## greek-cities License
greek-cities is an open source project by Alex Avlonitis with an MIT license.
