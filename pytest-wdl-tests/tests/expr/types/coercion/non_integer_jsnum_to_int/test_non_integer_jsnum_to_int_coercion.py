def test_non_integer_jsnum_to_int_coercion(workflow_runner):
    """
    Float and Int coercions
    """

    test_jsnum = 123.123
    expected_num = 123

    inputs = {"in_int": test_jsnum}

    expectations = {"out_int": expected_num}

    workflow_runner("test_non_integer_jsnum_to_int_coercion.wdl", inputs, expectations)
