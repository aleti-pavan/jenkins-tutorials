#Jenkins Pipelines for Terraform

Before executing this pipeline, Manual configuration to be done on the Linux server where jenkins is installed.

By default Jenkins installation creation a user called `jenkins` and all jenkins jobs would be executed with that user, so I have enabled the sudo access to the `jenkins` user by updating `visudo`

        i)    Login to RHEL-8 EC2
        ii)   sudo visudo -> update the sudoers with entry `jenkins	ALL=(ALL) 	NOPASSWD: ALL`
        iii)  Now Jenkins Pipelines should be able to function normally without issues


`1. Jenkinsfile-terraform` - This is Working Pipeline file tested on jenkins instance.

    You need to input `access_key` and `secret_key` values in the environment section of the pipeline to have it successful, Although it's not secure purpose here is to learn Pipelines.

          i)     Either copy&paste content in the created pipeline job
                          or
          ii)    Create a pipeline job and integrate with Github to be triggered by Git Push.
