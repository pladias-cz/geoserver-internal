# geoserver-internal

### Data privatního geoserveru pro Pladias/Dalibor
Tedy ten který není z vnějšku dostupný a je jen pomocí Play proxy ven. Dalibor i Pladias mají každý svou vlastní (identickou, jen na jinou db směrovanou) instanci.

postup:
* ujistím se že mám poslední verzi ```docker-compose pull```
* nahodím si pl_docker_development např
* upravím co chci v geoserveru
* přepíši aktuální:
 ```bash
 rm -rf ./data
 docker cp pl_geoserver_private:/opt/geoserver/data_dir/ ./data
 ```
* push repositář


lokální mi jedou na větvi develop, nezapomneout tedy pokud ok mergenout do master aby se zpropagovalo na produkci