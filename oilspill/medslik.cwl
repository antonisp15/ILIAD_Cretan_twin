cwlVersion: v1.2

$namespaces:
  s: https://schema.org/
  cwltool: http://commonwl.org/cwltool#

$graph:
- class: CommandLineTool

  id: medslik

  baseCommand: /bin/bash
  arguments:
  - /opt/entrypoint.sh
  - --cont_slick
  - NO
  - --sat
  - NO
  - --lat_point
  - valueFrom: $( inputs.lat_point )
  - --lon_point
  - valueFrom: $( inputs.lon_point )
  - --date_spill
  - valueFrom: $( inputs.date_spill )
  - --spill_dur
  - valueFrom: $( inputs.spill_dur )
  - --spill_res
  - valueFrom: $( inputs.spill_res )
  - --spill_tons
  - valueFrom: $( inputs.spill_tons )
  - --username
  - valueFrom: $( inputs.username )
  - --password
  - valueFrom: $( inputs.password )

  inputs:
    lat_point:
        type: float
    lon_point:
        type: float
    date_spill:
        type: string
    spill_dur:
        type: string
    spill_res:
        type: string
    spill_tons:
        type: float
    username:
        type: string
    password:
        type: string

  outputs:
    results:
      outputBinding:
        glob: MEDSLIK_GLO/OUT/
      type: Directory
      doc: All results

  requirements:
    NetworkAccess:
      networkAccess: true
    ResourceRequirement: {}
    InlineJavascriptRequirement: {}
    DockerRequirement:
      dockerPull: iliad-repository.inesctec.pt/medslik:0.1.0
    EnvVarRequirement:
      envDef:
        PATH: /opt/miniconda3/envs/application/bin:/opt/conda/bin:/opt/conda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
  hints:
    "cwltool:Secrets":
      secrets: [username,password]

  s:name: medslik
  s:softwareVersion: 0.1.0
  s:description: medslik
  s:keywords:
    - medslik
    - oil spill
  s:programmingLanguage: python
  s:sourceOrganization:
    - class: s:Organization
      s:name: FORTH
      s:url: https://forth.gr
  s:author:
    - class: s:Person
      s:email: antonisparasyris@iacm.forth.gr
      s:name: Antonios Parasyris
  s:mantainer:
    - class: s:Person
      s:email: vasmeth@iacm.forth.gr
      s:name: Vassiliki Metheniti
  s:contributor:
    - class: s:Person
      s:name: Miguel Correia
      s:email: miguel.r.correia@inesctec.pt
  s:codeRepository: https://pipe-drive.inesctec.pt/application-packages/tools/medslik-glo-forth/medslik_0_1_0.cwl
  s:dateCreated: "2024-11-12T16:00:00Z"