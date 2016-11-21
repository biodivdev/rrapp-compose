# Biodiv-compose

This proxies and consolidates other Rapid Automated Biodiversity Risk Assessments intallations.

[View it live](http://br.biodiversity.cloud/).

Runing apps:

- [taxa-bot](http://github.com/diogok/taxa-bot)
- [dwc-bot-es](http://github.com/diogok/dwc-bot-es)
- [dwc-services](http://github.com/diogok/dwc-services)
- [biodiv-idx](http://github.com/diogok/biodiv-idx)
- [biodiv-ui](http://github.com/diogok/biodiv-ui)

# How to run

You will need at least 4GB of RAM and it is recommended 50GB of disk and 4 cores, but it varies with the data to load.

Install Git, [Docker](https://docs.docker.com/v1.8/installation/ubuntulinux/) and [docker-compose](https://docs.docker.com/compose/install/).

Clone the repository and get the specific branch: 

  $ git clone https://github.com/diogok/biodiv-compose
  $ cd biodiv-compose

For latest elasticsearch you might need to configure the machine with the following:

  $ sudo sysctl -w vm.max\_map\_count=262144

It is important to change the server config at config/Caddyfile (not the root Caddyfile, the one in the config dir), and make the domain line properly, such as http://localhost if it is not running in a domain or inteded to run at another port. The correponding exposed port at docker-compose.yml might also need to be changed.

Finally execute the apps:

  $ docker-compose up -d

It will take a while the first time as it download needed images.


The easiest way to customize and run in your data is to change the values in the config files. At config/dwc-bot.list it will list IPTs where to consume the occurrence data from.

# License

MIT

