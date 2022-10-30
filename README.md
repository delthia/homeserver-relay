# Homeserver Relay
![Github License](https://img.shields.io/github/license/delthia/homeserver-relay)
![GitHub Repo Size](https://img.shields.io/github/repo-size/delthia/homeserver-relay)

⚠ This project is under construction. While the main functionality of turning on and off the relay based on the time has been tested during a month, the script that makes the `avoid` functionality to work is being worked on.

---

## 1. Context
About a year ago, I started hosting some apps in my raspberry pi 4, initially a mumble server that I would manually turn on and off. As I started hosting more and more applications after switching to docker, the server became a more and more essential part to my computer and internet usage, so this summer I started leaving it on all day long. While leaving it plugged it in is the easiest, and the raspberry doesn't consume too much power, I don't need it running while I'm sleeping, and it does consume power.

For this reason, I decided I wanted to setup a way for it to be turned on and off automatically. While I could use a shelly switch, I decided to go with a sonoff basic relay, as while I had both, a Shelly 1 and a Sonoff Basic, the latter, needed a propietary app to be used, so as I wasn't going to use it without changing its firmware anyways, I thought I'd make this project with that relay and esphome.

## 2. Quickstart
To quickly get the setup working, follow this steps:
1. Plug the relay via a USB-TTL adapter to you computer, keep in that the relay works at 3.3V
1. Change the variables on the `secrets.yml` file
1. Upload the firmware with `esphome run sonoff.yaml`
1. Disconnect the USB adaptor, assemble the case and connect the mains plugs
1. Add the cron to execute the poweroff script

## 3. Detailed instructions
Detailed instructions can be found under the `docs/` directory, or by clicking [here](docs/install.md) (which will 'teleport' you there).

🇪🇸 En el directorio `docs/` existe una versión español de este documento y de toda la documentación. Haz clic [aquí](docs/README.es.md) para verla.


This project aims to replace the default firmware of a sonoff basic relay to make it automatically turn ond and off my homeserver, a raspberry pi.

Currently, this repo only holds the esphome script and the bash script that I'm working on to make this work completely, and might not make much sense without its accompanying documentation, which should be pushed to the repo sometime in the near future.
