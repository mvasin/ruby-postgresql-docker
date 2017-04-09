# Ruby and postgresql docker image for bitbucket pipelines

Docker hub repo: https://hub.docker.com/r/vasin/ruby-postgresql/

## Usage

`cd /your/ruby/app`

To start the app:
`docker run -ti -v $PWD:/app -p 9292:9292  vasin/ruby-postgresql`

To look around inside the container and run manually:
`run -ti -v $PWD:/app -p 9292:9292  vasin/ruby-postgresql sh`

## TODO
Update postgresql version to the latest
