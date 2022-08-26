# Homeserver Relay
![GitHub License](https://img.shields.io/github/license/delhtia/homeserver-relay)
![GitHub Repo Size](https://img.shields.io/github/repo-size/delthia/homeserver-relay)

⚠ Este proyecto está en construcción. Mientras que la funcionalidad principal de encender y apagar el relé en función de la hora ha sido probada durante un mes, el script que hace que la funcionalidad de `evitar` funcione está en proceso.

---

## 1. Contexto
Hace alrededor de un año, empecé a ejecutar algunas aplicaciones en mi raspberry pi 4, inicialmente un servidor de mumble que encendía y apagaba manualmente. A medida que empezaba a ejecutar más y más aplicaciones después de cambiar a docker, el servidor se volvía una parte más y más esencial de mi uso del ordenador y de internet, por lo que esté verano empecé a dejarlo encendido todo el día. Mientra que dejar la raspberry enchufada todo el día es lo mśa fácil, y la raspberry no consume demasiada corriente, no la necesito encendida mientras duermo, y aún así, consume algo de corriente.

Por este motivo, decidí que quería hacer que se encendiera y se apagara automáticamente. Mientras que podría utilizar un shelly switch, decidí utilizar un relé sonoff basic, ya que, aunque tenía los dos, un Shelly 1 y un Sonoff Basic, el último necesitaba una aplicación cerrada para utilizarse, por lo que de todas formas no lo iba a utilizar sin cambiarle el firmware. Así que decidí que haría este proyecto con ese relé y esphome.

## 2. Inicio rápido
Para poner a funcionar el sistema rápidamente, sigue estos pasos:
1. Enchufa el relé a través de un adaptador USB-TTL a tu ordenador, ten en cuenta que el relé funciona a 3.3V
1. Cambia las variables en el archivo `secrets.yml`
1. Sube el firmware con el comando `esphome run sonoff.yaml`
1. Desconecta el adaptador USB, ensambla la carcasa y conecta los enchufes
1. Añade el cron para ejecutar el script de apagado

## 3. Instrucciones detalladas
Puedes encontrar instrucciones detalladas en el directorio `/docs', o haciendo clic [aquí](docs/) (que te 'teletransportará' allí).