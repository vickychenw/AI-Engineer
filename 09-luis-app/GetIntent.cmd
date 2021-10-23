#!/bin/bash





curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What's%20the%20time?"


curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What's%20today's%20date?"


curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What%20time%20is%20it%20in%20Sydney?"

curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What%20time%20is%20it%20in%20Nairobi?"

curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What%20time%20is%20it%20in%20Glasgow?"

curl -X GET "https://luis-912.cognitiveservices.azure.com/luis/prediction/v3.0/apps/131c0520-c37c-448a-a1e4-b0b430e87212/slots/production/predict?verbose=true&show-all-intents=true&log=true&subscription-key=2a6db56d3c024fd7b4866399e00f92ac&query=What's%20the%20UK%20time?"