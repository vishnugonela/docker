docker_image 'rancher/agent' do
  tag 'v1.0.1'
  action :pull
end

docker_container 'ranger-agent' do
  repo 'rancher/agent'
  tag 'v1.0.1'
  command 'register'
  volumes ['/var/lib/rancher:/var/lib/rancher', '/var/run/docker.sock:/var/run/docker.sock']
end
