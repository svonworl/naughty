class: Workflow
id: "naughty-workflow"
label: "naughty-workflow"
cwlVersion: v1.1

doc: A workflow containing some questionably-named files

inputs:
  w_pattern: string
  w_input_file: File

outputs:
  w_output_file:
    type: File
    outputSource: grepc/output_file
    
steps:
  grepc:
    run: "`touch oopsie`.cwl"
    in:
      pattern: w_pattern
      input_file: w_input_file
    out: [output_file]

    
