version 1.0

workflow test_file2string_and_string2file_coercions {
    input {
        String wf_in_file_name
        String wf_in_file_content
    }

    call create_file { input: in_file_name = wf_in_file_name, in_file_content = wf_in_file_content }

    String str_coerced_from_file = create_file.out_file     # File to String
    File file_coerced_from_str = str_coerced_from_file      # String to File

    output {
        String out_str_coerced_from_file = basename(str_coerced_from_file)
        String out_content_of_file_coerced_from_string = read_string(file_coerced_from_str)
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
