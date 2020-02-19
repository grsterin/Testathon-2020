version 1.0

workflow test_non_integer_jsnum_to_int_coercion {
    input {
        Int in_int
    }

    output {
        Int out_int = in_int
    }
}
