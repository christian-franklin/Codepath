# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [ ] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF
![Video Walkthrough Part 2](app-vid2.gif)

### Notes
Describe any challenges encountered while building the app.

Found that the math for the collection view posters did not work for me. Had to tinker on my own to get the correct size. I also had issues with using a black background.

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [x] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.

### App Walkthrough GIF
![Video Walkthrough Part 1](app-vid.gif)

### Notes

Describe any challenges encountered while building the app.

Codepath instructions were somewhat outdated which made using Xcode features like the assistant (two circles intwined) not easy to follow. Also, using gem to install cocoapods caused errors when trying to install AlamofireImage so I had to re-install using Brew. Constraints for the bonus work were tough to figure out, but after overcoming them made my app look much better.
