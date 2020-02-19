version 1.0

workflow test_identity_coercions {
    input {
        String wf_in_file_name
        String wf_in_file_content

        String in_string
        Int in_int
        Float in_float
        Boolean in_boolean
        Array[Int] in_array
        Map[Int, String] in_map
    }

    String string = in_string
    Int int = in_int
    Float float = in_float
    Boolean boolean = in_boolean
    Array[Int] array = in_array
    Map[String, String] map = in_map

    call create_file { input: in_file_name = wf_in_file_name, in_file_content = wf_in_file_content }
    File file = create_file.out_file

    output {
        String out_file_content = read_string(file)
        String out_string = string
        Int out_int = int
        Float out_float = float
        Boolean out_boolean = boolean
        Array[Int] out_array = array
        Map[String, String] out_map = map
    }
}

task create_file {
    runtime {
        docker: "ubuntu:latest"
    }

    input {
        String in_file_name
        String in_file_content
    }

    command <<<
        echo ~{in_file_content} > ~{in_file_name}
    >>>

    output {
        File out_file = in_file_name
    }
}
