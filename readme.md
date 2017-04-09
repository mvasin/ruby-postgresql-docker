# Ruby and postgresql docker image for bitbucket pipelines

Docker hub repo: https://hub.docker.com/r/vasin/ruby-postgresql/

## Usage

`cd /your/ruby/app`

To start the app:
`docker run -ti -v $PWD:/app -p 9292:9292  vasin/ruby-postgresql` and navigate to `localhost:9292`.

To look around inside the container you can run shell:
`run -ti -v $PWD:/app -p 9292:9292  vasin/ruby-postgresql sh`
and then, from inside container, run manually
`rackup -o 0.0.0.0`

## TODO
Update postgresql version to the latest
