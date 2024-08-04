1. Open Powershell
2. write: setx PATH "%PATH%;C:\Users\aal8892\AppData\Local\Programs\Git\usr\bin"
3. close Powershell
4. Open it again and type: perl -v 
5. Open visual studio and type: perl script.pl

#!/usr/bin/env perl : shebang line

#strict: prevent typos and accidental variable creation.

#strict helps catch typos, enforces variable declaration, and prevents unsafe constructs.
#warnings alerts you to potential issues, use of deprecated features, and questionable constructs.
Using both pragmas together leads to more robust, maintainable, and error-free Perl code.

#Data::Dumper is a powerful Perl module used for debugging and inspecting complex data structures. 
It converts data structures into a string format that can be easily printed and analyzed. 
This is especially useful for examining arrays, hashes, and other nested data structures during development.

1; ensures that a Perl module returns a true value, which is required for the module to be considered successfully loaded.