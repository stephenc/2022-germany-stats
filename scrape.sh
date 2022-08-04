#!/usr/bin/env bash

set -e
set -o pipefail

mkdir -p data

function curl_etag() {
  echo "Fetching $1.csv " && curl -L \
    --etag-save "$1.etag" \
    --etag-compare "$1.etag" \
    --remote-time \
    -o "$1.csv" \
    "$2" && echo ""
}

curl_etag \
  data/RKI_Data_Status \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/38e0356be30642868b4c526424102718_0.csv

curl_etag \
  data/RKI_AdmUnit \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/58dba7034918475cb8aaf8ad38f7e77a_0.csv

curl_etag \
  data/RKI_Key_Data \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/c2f3c3b935a242169c6bec82e1fa573e_0.csv

curl_etag \
  data/RKI_History \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/6d78eb3b86ad4466a8e264aa2e32a2e4_0.csv

curl_etag \
  data/RKI_Altersgruppen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/23b1ccb051f543a5b526021275c1c6e5_0.csv

curl_etag \
  data/RKI_Corona_Landkreise \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/917fc37a709542548cc3be077a786c17_0.csv

curl_etag \
  data/RKI_Corona_Bundeslaender \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/ef4b445a53c1406892257fe63129a8ea_0.csv

curl_etag \
  data/RKI_COVID19_Nordrhein-Westfalen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/a99afefd4258435f8af660b6cbed9bf7_0.csv

curl_etag \
  data/RKI_COVID19_Baden-Wuerttemberg \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/8a0b7d7c9fb442ffaa512221cf11366e_0.csv

curl_etag \
  data/RKI_COVID19_Brandenburg \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/5f81692e203a4888a64cb1976aafbd34_0.csv

curl_etag \
  data/RKI_COVID19_Bayern \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/45258e51f57d43efb612f700a876ae8f_0.csv

curl_etag \
  data/RKI_COVID19_Berlin \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/3949d6fd2dc74386b763e451f4c6e384_0.csv

curl_etag \
  data/RKI_COVID19_Schleswig-Holstein \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/4a648483aedd49b8a6655290181d4c2a_0.csv

curl_etag \
  data/RKI_COVID19_Sachsen-Anhalt \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/06a1c943a9b845968b5ad0607f5f48f5_0.csv

curl_etag \
  data/RKI_COVID19_Rheinland-Pfalz \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/57e385f51a07495cb0a1e00a55ee1b5b_0.csv

curl_etag \
  data/RKI_COVID19_Saarland \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/0e59e1262dba4f5f8d6a904113bf7c99_0.csv

curl_etag \
  data/RKI_COVID19_Hamburg \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/ab2c1b9c36734faf937cd83dee339517_0.csv

curl_etag \
  data/RKI_COVID19_Thueringen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/790f5423e03e49c4baec55a1a232c136_0.csv

curl_etag \
  data/RKI_COVID19_Mecklenburg-Vorpommern \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/d6c27576ee034bb78621012738615598_0.csv

curl_etag \
  data/RKI_COVID19_Hessen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/3ed997d4a8a447f09ab122a1a432b070_0.csv

curl_etag \
  data/RKI_COVID19_Niedersachsen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/14d82a9addf841789cd6ef5c1f67476a_0.csv

curl_etag \
  data/RKI_COVID19_Bremen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/f7bdcbe7188545daabe65e6c9e2a4379_0.csv

curl_etag \
  data/RKI_COVID19_Sachsen \
  https://npgeo-corona-npgeo-de.hub.arcgis.com/datasets/3d3235c08d4f44a2afd088546b704902_0.csv

