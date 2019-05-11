# Ansible for GitHub Action
This action allows you to run `ansible` with no additional options.


## Usage
To use the action simply add the following lines to your `.github/main.workflow`.

```hcl
action "Run Ansible Playbook" {
  uses = "flemzord/ansible-action@master"
}
```

### Environment Variables
- **ACTION_PLAYBOOK_NAME**: (optional) defaults to `playbook.yml`
- **ACTION_ANSIBLE_ARGS**: (optional) defaults is null
- **ACTION_SSH_PRIVATE_KEY**: (optional) defaults is null


## License
The Dockerfile and associated scripts and documentation in this project are released under the [MIT](license).


## Credits
The initial GitHub action has been created by [Maxence Maireaux](/flemzord).
