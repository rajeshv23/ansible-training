#!/usr/bin/python

from ansible.module_utils.basic import AnsibleModule
import ast

def run_module():
    module_args = dict(
        username=dict(type='str', required=False, default='nsroot'),
    )

    result = dict(
        changed=False,
        original_message='',
        message=''
    )

    module = AnsibleModule(
        argument_spec=module_args,
        supports_check_mode=False
    )

    result['message'] = "Hello " +  module.params['username']
    result['original_message'] = "Hello " + module.params['username']
    result['changed'] = True
    module.exit_json(changed=True, meta=result)

def main():
    run_module()

if __name__ == '__main__':
    main()
