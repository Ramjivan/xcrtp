docker run -dti -p 1937:1935 --name injest --network commonBridge -e RTMP_PUSH_URLS="rtmp://gopal.streamway.in/live/injest" -e INJEST_API_HOST="http://nginx.streamway.in:3000" uk-london-1.ocir.io/lrqqxehccngb/streamway-injest:v1
docker run -dti -p 1936:1935 --name relay --network common -e PORT=1935 -e LOCAL_STREAM=live -e STREAMS="rtmp://gopal.streamway.in/live/relay" uk-london-1.ocir.io/lrqqxehccngb/streamway-relay:v1

## get container ip
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id


export HASHED_PASSWORD="$apr1$3W0fuKue$UyprG2whhbTQVhDk3/25e1"
export USERNAME=admin
export DOMAIN="traefik.streamway.in"
export EMAIL="tech@streamway.in"

# password ---
3aQ)9GvEqV})92<
# hasshed password ---
$apr1$3W0fuKue$UyprG2whhbTQVhDk3/25e1