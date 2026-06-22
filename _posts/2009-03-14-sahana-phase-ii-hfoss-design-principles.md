---
layout: post
title: "Sahana Phase II / H-FOSS Design Principles"
date: 2009-03-14
categories: [hfoss]
tags: [sahana, hfoss, disaster management, open source, design]
original_url: https://chamindra-de-silva.blogspot.com/2010/03/sahana-phase-ii-h-foss-design.html
---

It is time to move on from the good ol Sahana Phase II framework that has served us and been used in disasters for 4-5 years now. I would thus like to take this opportunity to capture the key design principles that I would like to see being applied in the next generation of applications in this domain. Sahana Phase II was built to work in the following constrained environment, we found time after time during disaster response:

* Telecoms and Internet access is either down or intermittently available.
* Bandwidth is often at a premium so every character counts
* Power can go out at time or not be availability
* Any central data center or infrastructure might have been affected by the disaster
* People have little time to get familiar with new systems
* Off the shelf systems have often to be customized for the requirement or risk not capturing aspects of gathered data
* Local developers have very little time to learn and support the system
* There are many existing legacy systems and loads of spreadsheets with valuable data
* Data will come to you with different levels of granularity, validity, redundancy. It often needs to be cleaned up.

Here are the key design principles, I had when building the Sahana P2 framework. Some of them you might find a bit odd and even contrary to popular practices building enterprise applications. However it is exactly for these reasons that large enterprise grade applications fail during disaster response. Here are the key ones:

**The System has to work in a low bandwidth high latency environment**

Even the most developed nations will find themselves in this environment because immediately post-disaster the networks are saturated with people trying to get through to each other. This has been where a lot of the more complex systems fail at a time of disaster, as they are often build to work at a time when internet throughput is a given. Sahana P2 spits out a very lean XHTML structure with all the visual look and feel coming from static CSS stylesheets that is downloaded and cached only once. This has two corollaries:

**Heavy AJAX or RIA can be a showstopper**

Rich internet applications that use heavy AJAX calls and frequently go back and forth will inevitable have issues in this environment. For example a simple AJAX pop-up due to latency will take much longer to appear and as a result the user might think the system has moved on, when it hasn't. If you are including AJAX based functionality make it work in such a way that it improve usability but is not a dependency for the completion of an action. The exception to this rule is mapping and that is the only one as it is something you cannot do without. Sahana Phase II avoided heavy AJAX in favor of simple HTML forms for this reason.

**Let the developers be in close touch with what is going out on the wire**

Developers can go off in a tangent in terms of functionality and forget about how much their implementations is costing in terms of throughput. A lot can be said for abstraction, but the more a developer is in close contact with the HTML output and character cost of his implementation the better. Sahana P2 let developers stick to PHP without much abstraction except in the form of template helper if needed and Web2Py/SahanaPy has a templating system that should be used more favorably when building applications.

**Design Uncluttered Intuitive Interfaces:**

The system was build to have a clean, uncluttered and simplistic interface which a responder could understand intuitively. This is important because often we do not have time to train new users immediately post disaster. More than most system a lot of help text was provided on the home pages and on the modules and additional help text and tool tips are provided to help the new user get used to the system. As a result there was a lot of good feedback on Sahana Phase 2 interface from users who found the system very intuitive and easy to learn.

**Plugin architecture and a focus on automation**

Sahana P2 had a lot of dynamically pluggable namespace automation both at directory, file and function level. All you had to do was drop in a new file with a specific name (main.inc, admin.inc) for the framework to recognize there was a new module and it's admin page. A lot of things were automated, greatly reducing the learning curve for an administrator. To move out a module all you had to do was move the directory. So there was very little in terms of configuration files that needed to be written. This is in contrast to what I feel is badly practiced in the Java world of needing multiple complex XML configuration files to get something to work.

**KISS Design and Learning Curve for Local Developers**

The people that would often be most committed to supporting a system post-disaster and will be in it for the long run would be the local developers. As a result a system needs to be easy to understand and customize. PHP and Python as scripting languages are some of the easiest languages to learn, though I might give the edge in terms of ease of use to PHP as it is focused as a web development language. In Sahana P2 we also did not add a whole new layer of learning for someone to create a module. A module writer could use vanilla PHP to build his module and use the template helpers only if needed. If he wanted to escape the framework in certain ways he could use function overrides to completely change the layout. There were many instances where we found during multiple disaster, even during Haiti, Sahana P2 downloaded and customized heavily independently without any help from the community developers. This was a testament to this design principle.

**No Complex Workflows and Security please**

Avoid introducing complex workflows and security and creating dependencies on people to approve. Just post a disaster most people are overwhelmed and if a system dictates that person X should approve person Y before he can do action Z, most likely person X will become a bottleneck or will end up wasting his time with having to monitor approvals. Rather build systems that are open by default and have minimal workflows if at all needed to deliver results. The risk of not having access to good information is more of a problem here than the risk of unauthorized access. This is why by default Sahana P2 comes without security enabled. However if you do need it possibly later on in the relief phase, you can enable it at any point and customize it to your hearts content.

**Portability and Data Synchronization:**

Sahana was made available as a portable application, and thus moving the program with it's data is simply a matter of copying a self-contained directory to a USB disk. This has the added benefit of being pre-configured click and play instance of Sahana and an ideal way for gathering data from the field and synchronizing it to a central machine, when there is no internet access in the field. The data import and export functionality also performed an important function of importing data from spreadsheets.

**Depend on the OS and Database for your scalability**

Sahana Phase II depended more on the proven LAMP stack for it's scalability. PHP by default is stateless and make it very hard for you to introduce state. Every new call is an new instantiation of the Sahana application. Whilst this can seem very inefficient, it is an architecture that was designed that way to be horizontally scalable. This stack is actually one of the most popular stack for horizontally scaling large portals and is tweaked further and used by organizations such as yahoo or google, so we knew we had little risk of having problems with scalability in P2 that could not be resolved.

**Resilient easily debuggable Architecture and Database:**

Tensions are already high in the middle of a disaster that you cannot afford to depend on systems that have little tolerance to race conditions or dependancy error. Thus flatten your architecture as much as possible and actively reduce single points of failure. If there is error then the architecture should make it easy to find. Unfortunately this is a problem of encapsulation and heavy abstraction, that it make finding the real error harder to find. Maybe I am biased, but with Sahana P2 finding and resolving issues was quite trivial (again as we did not deviate much from vanilla PHP)

**Permit an easily readable and directly modifiable database**

A lot of people say that you should not modify the database directly, but actually during the nature of data post disaster is such you have to do a lot of data clean up and if for some reason you have data corruption, you do need to be able to look and modify your database. The database scheme thus should also be accessible. This was one reason that some references is Sahana always used 3 letter abbreviations (rather than a number), to make it easy to look at one table and know what classes that entity was associated with. We wanted to strive to make it easy to understand the database by looking at it, rather than creating a new abstraction layer that needed to be learned and updated. Also when the functionality does not exist, there can be a lot of customization done through the database. One example is the bulk data imports and clean up of data that needs to be performed. Thus keep the database as stateless as possible and easy to understand and keep the database schema simple so that it can easily be tweaked if needed.

Well there are other things, but I think these are the key ones. However though these were the principles I encouraged as of late the recent improvements to Phase II have in certain areas not kept with them, so I think it really is an opportune moment for a new framework. In hindsight here are some of the things I would like to see in the new framework, beyond what I mentioned above. And for the record we did know a lot about the MVC pattern and OO before we started phase II, but choose rather not to use it to keep the framework lightweight. MVC and OO was rather left as a choice the module writer could make, however possibly to avoid confusion what I could have done was create an MVC layer that could have been used optionally.

**This to add in a next gen DM framework**

* Optional Lightweight MVC based framework (with low learning curve).
* Automated database abstractions (model OO) – reverse compiled from the data schema
* Automatic CRUD/REST functionality (views), but can be overridden and does not trap you. Beware of CRUD as it is as old as MS Access. It will get you 80% of the way really fast, but the remaining 20% will make it hell and require you to break it, so you need to know when to apply it.
* Easy database migrations for schema changes (support for multiple schemas for single entity).
* Inherent support for importing and working spreadsheets
* Inherent support for datatables and exporting data in common.
* Inherent support for data versioning, credentialing and logging
* True Disaster or Sub-Disaster Event multi-tenancy
