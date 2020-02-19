def test_file2string_and_string2file_coercions(workflow_runner):
    """
    String-to-File and File-to-String type coercions
    """

    test_file_name = "test.file"
    test_file_content = "test content"

    inputs = {"wf_in_file_name": test_file_name, "wf_in_file_content": test_file_content}
    expectations = {"out_str_coerced_from_file": test_file_name, "out_content_of_file_coerced_from_string": test_file_content}

    workflow_runner("test_file2string_and_string2file_coercions.wdl", inputs, expectations)
