---
layout: post
title: "Sahana at Relief 02 at Camp Roberts, California"
date: 2009-12-03
categories: [hfoss]
tags: [sahana, hfoss, disaster management, sms, relief02]
original_url: https://chamindra-de-silva.blogspot.com/2009/12/we-had-fantastic-two-weeks-at-camp.html
---

We had a fantastic two weeks at Camp Roberts and accomplished a great deal for Sahana. This included the use of a $400 (two years ago price) eeePC/Netbook as our primary data collection server, pulling WMS layers from mosaiced and geo-referenced UAV and satellite imagery of the Camp Roberts experiment site, configured an SMS gateway running on a Windows-based server using Cygwin and SMSTools and a Nokia 3220 phone to send and receive SMS messages from Sahana, an Android application to send in structured SMS messages to Sahana with embedded GPS coordinates, exporting of a KML feed from Sahana to Google earth to name a few of the new functionality we added.

The new SMS capabilities which I worked on gives Sahana the ability to serve as an incredibly powerful crowdsourcing and disaster situation awareness application. New SMS functionality included:

* A new format for a structured SMS message to be sent from any cell phone to Sahana.
* The ability to register a user name to a cellphone number.
* The mapping of the SMS messages to a DHS symbolset of incident information based on feature class reported by the Android and SMS message.
* We developed the ability to poll the Sahana server and pull information about the last known location of a registered Sahana user
* Or the search of the last know report based on a keyword

This all was applied in an integrated field experiment and was also present to some key representatives from organizations such as FEMA and DHS

You can find the full details and pictures on Mark's talksahana post here: http://talksahana.com/?p=303
