version 1.0

workflow test_types_wf {
    Int i = 0                               # An integer value
    Float float = 27.3                      # A floating point number
    Boolean bool = true                     # A boolean true
    Boolean bool2 = false                   # A boolean true
    String str = "hello, $!~ \n\t\r world"  # A string value
    File file = "/dev/null"                 # A file
}
