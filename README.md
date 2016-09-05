# PlaygroundSupportMock

PlaygroundSupportMock is an iOS Framework that is meant to mock the behavior of the PlaygroundSupport framework that is in the iOS Swift Playgrounds app.

Right now the main benefit of this framework is that you can author the Contents.swift and LiveView.swift files for .playgroundbook packages and they will build in Xcode.  There isn't much runtime support to have the book do anything in the simulator, but you could hook up your LiveView to your AppDelegate and show it.  You could also run your playground code in Unit Tests.

To really run the book, you need to put it on your iPad and load it into the Swift Playgrounds app.  This makes sure that the code will compile once you do that.

You can install this into your project with Carthage and the following line in your Cartfile:

```
github "loufranco/PlaygroundSupportMock"
```
