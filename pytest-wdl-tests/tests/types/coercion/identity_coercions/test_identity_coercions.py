def test_identity_coercions(workflow_runner):
    """
    Identity coercions
    """

    test_file_name = "test.file"
    test_file_content = "test content"
    test_string = "test string"
    test_int = 12345
    test_float = 123.123
    test_boolean = False
    test_array = [1, 2, 3, 4, 5]
    test_map = {"1": "one", "2": "two", "3": "three"}

    inputs = {"wf_in_file_name": test_file_name,
              "wf_in_file_content": test_file_content,
              "in_string": test_string,
              "in_int": test_int,
              "in_float": test_float,
              "in_boolean": test_boolean,
              "in_array": test_array,
              "in_map": test_map}

    expectations = {"out_file_content": test_file_content,
                    "out_string": test_string,
                    "out_int": test_int,
                    "out_float": test_float,
                    "out_boolean": test_boolean,
                    "out_array": test_array,
                    "out_map": test_map}

    workflow_runner("test_identity_coercions.wdl", inputs, expectations)
