---
layout: post
title: Add Icons,Images,and Effects
categories:
- Programming
tags:
- iOS
---
#For a Mac app, create a set of icons, consisting of pairs of icons (standard and high resolution) for each icon size—16 x 16, 32 x 32, 128 x 128, 256 x 256, and 512 x 512—used by the Finder to represent your app to the user.
Table 5-2 lists the dimensions of the icons to include for apps built for iOS 7 and later.

Table 5-2  Icon dimensions (iOS 7 and later)
Icon
Idiom
Size
Usage
App icon (required)
iPhone
60 x 60 pixels
120 x 120 pixels (@2x)
This is the main icon for apps running on iPhone and iPod touch in iOS 7 and later.
App icon (required)
iPad
76 x 76 pixels
152 x 152 pixels (@2x)
This is the main icon for apps running on iPad in iOS 7 and later.
Spotlight search results icon (recommended)
All devices
40 x 40 pixels
80 x 80 pixels (@2x)
This is the icon displayed for Spotlight search results in iOS 7 and later.
Settings icon
All devices
29 x 29 pixels
58 x 58 pixels (@2x)
This is the icon used by the Settings app in iOS 7 and later.
Table 5-3 lists the dimensions of the icons you can include for apps built for iOS 6.1 and earlier.

Table 5-3  Icon dimensions (iOS 6.1 and earlier)
Icon
Idiom
Size
Usage
App icon (required)
iPhone
57 x 57 pixels
114 x 114 pixels (@2x)
This is the main icon for apps running on iPhone and iPod touch in iOS 6.1 and earlier.
App icon (required)
iPad
72 x 72 pixels
144 x 144 pixels (@2x)
This is the main icon for apps running on iPad.
Small icon for Spotlight search results and Settings (recommended)
iPhone
29 x 29 pixels
58 x 58 pixels (@2x)
This is the icon displayed in conjunction with search results on iPhone and iPod touch. This icon is also used by the Settings app on all devices.
Small icon for Spotlight search results and Settings (recommended)
iPad
50 x 50 pixels
100 x 100 pixels (@2x)
This is the icon displayed in conjunction with search results on iPad.
Note: For apps that run on devices with Retina displays, two versions of each icon should be provided, with the second one being a high-resolution version of the original. The names of the two icons should be the same except for the inclusion of the string @2x in the filename of the high-resolution image. You can find out more about specifying and loading high-resolution image resources in Drawing and Printing Guide for iOS. For a complete list of app-related icons and detailed information about the usage and preparation of your icons, see iOS Human Interface Guidelines.
