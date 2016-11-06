# mcafee

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What mcafee affects](#what-mcafee-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with mcafee](#beginning-with-mcafee)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

A one-maybe-two sentence summary of what the module does/what problem it solves.
This is your 30 second elevator pitch for your module. Consider including
OS/Puppet version it works with.

## Module Description

If applicable, this section should have a brief description of the technology
the module integrates with and what that integration enables. This section
should answer the questions: "What does this module *do*?" and "Why would I use
it?"

If your module has a range of functionality (installation, configuration,
management, etc.) this is the time to mention it.

## Setup

### What mcafee affects

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form.

### Setup Requirements

This module requires pluginsync enabled

### Beginning with mcafee

The very basic steps needed for a user to get the module up and running.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you may wish to include an additional section here: Upgrading
(For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing
the fancy stuff with your module here.

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

* workaround faulty systemd integration:
```
[root@systemadmin agent]# systemctl status ma
● ma.service - LSB: McAfee Agent
   Loaded: loaded (/etc/rc.d/init.d/ma)
   Active: failed (Result: exit-code) since Sat 2016-11-05 17:22:36 GMT; 26min ago
     Docs: man:systemd-sysv-generator(8)
  Process: 19125 ExecStart=/etc/rc.d/init.d/ma start (code=exited, status=1/FAILURE)

Nov 05 17:22:30 systemadmin systemd[1]: Starting LSB: McAfee Agent...
Nov 05 17:22:30 systemadmin su[19134]: (to mfe) root on none
Nov 05 17:22:30 systemadmin ma[19125]: [53B blob data]
Nov 05 17:22:32 systemadmin ma[19125]: [52B blob data]
Nov 05 17:22:36 systemadmin ma[19125]: [55B blob data]
Nov 05 17:22:36 systemadmin systemd[1]: ma.service: control process exited, code=exited status=1
Nov 05 17:22:36 systemadmin systemd[1]: Failed to start LSB: McAfee Agent.
Nov 05 17:22:36 systemadmin systemd[1]: Unit ma.service entered failed state.
Nov 05 17:22:36 systemadmin systemd[1]: ma.service failed.
[root@systemadmin agent]# /etc/init.d/ma status

McAfee agent service is already running.
McAfee common services is already running.
McAfee compat service is already running.

```


### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
