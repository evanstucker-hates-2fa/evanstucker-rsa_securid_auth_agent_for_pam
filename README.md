# rsa_securid_auth_agent_for_pam

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with rsa_securid_auth_agent_for_pam](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with rsa_securid_auth_agent_for_pam](#beginning-with-rsa_securid_auth_agent_for_pam)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Trying to puppetize proprietary products is a terrible and thankless task -
particularly ones with interative install scripts... Regardless, I was
disappointed that no Puppet module existed to configure RSA Authentication
Agent for PAM, so I present you with this pitiful module. This is basically
just a puppetization of the instructions found here:

https://community.rsa.com/docs/DOC-39959

## Setup

### Setup Requirements

Before you can actually use this module, you need to:

1. Download the proprietary agent from the link below and put it in this
   module's "files" directory:

   https://community.rsa.com/docs/DOC-61994

1. Create or copy the sdconf.rec file from the RSA server to this module's
   "files" directory.

### Beginning with rsa_securid_auth_agent_for_pam

1. Copy the tar file and sdconf.rec files that you downloaded in Setup Requirements into this module's "files" directory.

## Usage

This section is where you describe how to customize, configure, and do the
fancy stuff with your module here. It's especially helpful if you include usage
examples and code samples for doing things with your module.

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This module is currently only designed to work on RHEL 7, it has only been tested with Puppet 4, and it only works with PAM-Agent_v7.1.0.1.16.05_06_13_02_04_01.tar.

## Development

Please help! Make this module less terrible. Make it work with other operating systems. Contact RSA and ask them to stop hiding their download behind an account wall so I can change the source to "http://".
