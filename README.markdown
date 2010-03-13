# Anywhere

Anywhere is a little web application that redirects misspelled domain names to the real website all while tracking the number of hits a misspelled domain is hit. It was born out of a real need at Poll Everywhere to try to gauge the number of people that screw up our name and call it Poll Anywhere; hence the name, anywhere.

## Installation

Its pretty easy to get anywhere running, first:

    git clone http://github.com/bradgessler/anywhere.git
    cd anywhere
    rake config

Now open anywhere.config and change to your liking, then:

    rake db
    
Fire up anywhere from the terminal and you're in business!
    
    rackup config.ru
    
You might need to install some gems if stuff is breaking at this point.

## License

    Copyright (c) 2009 Brad Gessler

    Permission is hereby granted, free of charge, to any person
    obtaining a copy of this software and associated documentation
    files (the "Software"), to deal in the Software without
    restriction, including without limitation the rights to use,
    copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following
    conditions:

    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
    OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.
