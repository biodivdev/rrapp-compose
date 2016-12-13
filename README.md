# Biodiv-compose

This proxies and consolidates other Rapid Automated Biodiversity Risk Assessments intallations.

[View it live](https://br.biodiversity.cloud/).

Runing individual apps:

- [dwc-bot-es](https://github.com/biodivdev/dwc-bot-es)
- [rrapp-idx](https://github.com/biodivdev/rrapp-idx)
- [rrapp-ui](https://github.com/biodivdev/rrapp-ui)

## How to run

### Required data

It is important that you have:

- A published checklist in IPT
- Published occurrences in one or many IPTs

### Preparing

You will need at least 4GB of RAM and it is recommended 50GB of disk and 4 cores, but it varies with the data to load.

Install Git, and latest [Docker](https://docs.docker.com/engine/installation/linux/) and [docker-compose](https://docs.docker.com/compose/install/).

Clone the repository: 

  $ git clone https://github.com/biodivdev/rrapp-compose
  $ cd rrapp-compose

For latest elasticsearch you might need to configure the machine with the following:

  $ sudo sysctl -w vm.max\_map\_count=262144

### Configuration and Customization

By default it will bind to port 8080, it can be changed at config/Caddyfile (not the Caddyfile at root, the one at config directory), you can also add a domain and automatic HTTPS, see [caddy documentation](https://caddyserver.com) for other options.

The file config/dwc-bot.list is a list of IPT's where to get the data from.

The file config/config.ini is the configuration of all apps:

- ELASTICSEARCH=http://elasticsearch:9200 tells which elasticsearch to use
- INDEX=dwc Tells which index to use on the elasticsearch
- LOOP=true Tells for the bot and the index to keep runing timely (auto-update the data)
- SOURCE=lista\_flora\_do\_brasil Tells the name of the resource to use as taxonomic backbone

### Running

Download the images of the apps (important to keep up-to-date):

  $ docker-compose pull

Start them all:

  $ docker-compose up -d

They will start in background. You can follow the logs with:

  $ docker-compose logs

## License

MIT

