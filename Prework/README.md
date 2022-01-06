# Pre-work - Prework Tip Calculator

Prework Tip Calculator is a tip calculator application for iOS.

Submitted by: Christian Franklin

Time spent: 8 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] List anything else that you can get done to improve the app functionality!
- [X] Added party size option in settings to split bill between number of people
- [X] Added a darkmode

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://recordit.co/4jBBmAP3wN.gif)

GIF created with [recordit.co](http://www.recordit.co/).

## Notes

Describe any challenges encountered while building the app.

Biggest challenge was getting the initial tip amount to calculate. I ended up putting a button to calculate it, but pretty much everything else will calculate it by default. 
I struggled to find a way to cause my CalculateTip function to be called by entering a number in the Bill Amount text field alone. I also struggled implementing the darkmode
as the darkmode colors were tricky to get to match across screens. My last struggle was figuring out how to hide and unhide the party size labels and slider, did not work the
way I thought it would.

## License

    Copyright [2022] [Christian Franklin]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
