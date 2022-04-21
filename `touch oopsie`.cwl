#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "grepc"
label: "grepc tool"
cwlVersion: v1.1

doc: A tool to determine how many lines in the input match a pattern

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/svonworl/grepc:main"

inputs:
  pattern:
    type: string
    inputBinding:
      position: 1

  input_file:
    type: File
    inputBinding:
      position: 2

outputs:
  output_file:
    type: File
    outputBinding:
      glob: out.txt

baseCommand: ["bash", "/usr/local/bin/grepc"]
