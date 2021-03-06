postgresql-apb
======================

[![Build Status](https://travis-ci.org/ansibleplaybookbundle/postgresql-apb.svg?branch=master)](https://travis-ci.org/openshift/ansible-service-broker)

An apb for deploying [PostgreSQL](https://www.postgresql.org).

## What it does
* Deploys 1 postgresql container.

## Requirements
* N/A

## Parameters
* namespace: Optional, default 'rhscl-postgresql-apb', Namespace to deploy the cluster in.
* postgresql_database, Optional, default 'admin', Postgresql database name.
* postgresql_password, Optional, default is a randomly generated string, Postgresql databaase password.
* postgresql_user, Optional, default 'admin', Postgresql database username.
* postgresql_version, Optional, default '9.6', Postgresql version. 9.4, 9.5, and 9.6 are supported.

## Running the application
`docker run --rm --net=host -v $HOME/.kube:/opt/apb/.kube:z -u $UID docker.io/ansibleplaybookbundle/postresql-apb provision`

## Tearing down the application
`docker run -e "OPENSHIFT_TARGET=<openshift_target>" -e "OPENSHIFT_TOKEN=<token>" ansibleplaybookbundle/postgresql-apb deprovision`
