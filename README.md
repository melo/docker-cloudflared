# Cloudflare cloudflared Image #

This is just a simple repackaging of the `cloudflared` binaries available at [https://developers.cloudflare.com/argo-tunnel/downloads/]().

This image uses the amd64/x86-64 binary. A multi-arch image is work in progress.


## How to use ##

```
docker run -d melopt/cloudflared <cloudflare_options>
```


## Demo ##

A `docker-compose.yml` is provided to demo the setup as a sidecar.

To run it use:

``` 
docker-compose up
```

See the URL assigned to your demo in the `cloudflared` logs, and try it with a browser.

To stop the demo, use `CTRL-C`.
