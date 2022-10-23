multibranchPipelineJob('GitHubExample') {
    branchSources {
        git {
            id('1')
            remote('¡¡¡¡urlDeTuRepoEnSSHAqui!!!!!')
            credentialsId('ssh-github-key')
        }
    }
}
