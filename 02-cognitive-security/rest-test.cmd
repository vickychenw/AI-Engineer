#!/bin/bash

curl -X POST "https://cognitivesrv.cognitiveservices.azure.com/text/analytics/v3.0/languages?" -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key: 92a76e0708044e858ba8e71edf8b641f" --data-ascii "{'documents':[{'id':1,'text':'bonjour'}]}"