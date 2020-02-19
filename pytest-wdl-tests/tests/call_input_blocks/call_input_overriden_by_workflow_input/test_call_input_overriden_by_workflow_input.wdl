version 1.0

workflow test_call_input_overriden_by_workflow_input {
  call test_call_input_overriden_by_workflow_input_task { input: str = "test string from call input block" }
}

task test_call_input_overriden_by_workflow_input_task {
    input {
        String str
    }

    command <<<
        echo ~{str}
    >>>

    output {
        String out = read_string(stdout())
    }
}

