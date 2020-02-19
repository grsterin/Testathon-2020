def test_primitive_types(workflow_runner):
    """
    All primitive types from the specification are supported
    Composite types and type coercion are out of this test's scope
    """
    workflow_runner("test_primitive_types.wdl")
