multibranchPipelineJob('GitHubExample') {
    branchSources {
        git {
            id('1')
            remote('urlDeTuRepoEnSSHAqui')
        }
    }
}
