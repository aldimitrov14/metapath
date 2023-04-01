# MetaPath Web Portal


This is the MetaPath Web Portal which is built on *SAP Cloud Application Programming Model (CAP)* using Node JS.

see: *https://cap.cloud.sap/docs/node.js/*

The Frontend of the Web Portal is built using *SAP UI5 Frontend Framework* 

see: *https://sapui5.hana.ondemand.com/#/topic*


To run the project you will require Node.JS version 16 or lower, the project itself is built on Node JS ver. 16. Higher Node JS versions are not yet supported by SAP Cloud SDK npm package.

To download the project please git pull the project from the repository

see: *https://github.com/aldimitrov14/metapath*


To run the project the following commands have to be executed:

1. npm install
2. cds watch in the main folder of the project

The project the should start on localhost:4004 by default and you will be able to access it.
Inside the index.html page there are different links to both the running backend services and UI5 Applications.
To access an application use the links that look like this : *../webapp/index.html*
To access a service use the links that look like this : /user-data/ , /advertisements/

The services run both on OData v4 and OData v2 protocols using the the CDS OData v2 Adapter Proxy

see *https://www.npmjs.com/package/@sap/cds-odata-v2-adapter-proxy* 

To use the mock authentication, use the following user/password combination:

username: *alice*
password *alice*

> Note: This project has been built and run on macOS (unix) operating system and has not been tested on Windows (DOS) operating system. 
