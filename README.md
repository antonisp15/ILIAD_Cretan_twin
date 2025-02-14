CWL files for application packages created under ILIAD project towards the Cretan Digital Twin of the Ocean. IACM, FORTH, Greece

## How to use it:

To be able to run this CWL flow you need to have available on your machine:

1. [Python](https://www.python.org/)
2. [Docker](https://www.docker.com/)
3. [CWLTool](https://github.com/common-workflow-language/cwltool)

To start the docker service you need:
sudo service docker start

To run this CWL flow you have to execute the following command:

```
cwltool workflow.cwl#jobid job.yml  or job.json
```

Contact antonisparasyris@iacm.forth.gr and vasmeth@iacm.forth.gr for access to WRF FTP server
