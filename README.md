# IosAnalyticsDebugger

## Installation

This is the Swift Package Manager repo, you can also use Analytics Debugger via [CocoaPods](https://github.com/avohq/ios-analytics-debugger)

# Create the debugger instance

Obj-C

    AnalyticsDebugger * debugger = [AnalyticsDebugger new];

Swift

    let debugger = AnalyticsDebugger()
    
> Remeber to keep a reference to the `AnalyticsDebugger` instance somewhere, for example in your app delegate. Otherwise it will become unresponsive to touches.

# Show the debugger

Obj-C

    [debugger showBubbleDebugger];
    
or

    [debugger showBarDebugger];

Swift
  
    debugger.showBubble()
    
or

    debugger.showBarDebugger()

# Hide the debugger

Obj-C

    [debugger hideDebugger];
    
Swift

    debugger.hide()
    
# Post an event

Obj-C
    
    [self.debugger debugEvent:@"Test Event" eventParams: @{
        @"Parameter 0" : @"Value 0",
        @"Parameter 1" : @"Value 1"
    }];
        
Swift

    debugger.debugEvent("Test Event", eventParams: [
        "Parameter 0": "Value 0", 
        "Parameter 1": "Value 1"
    ])

# Using with Avo

When using Avo generated code you'll be calling the `init` methods. Actual interface of the methods depends on your schema setup, but there will be init methods with `debugger` parameter, where you can pass an instance of `AnalyticsDebugger`.

Obj-C

    [Avo initAvoWithEnv:AVOEnvDev ... debugger:debugger];

Swift

    Avo.initAvo(env: AvoEnv.dev, ..., debugger: debugger)

After that all events from Avo function calls will be automatically accessable in the debugger UI.

## Author

Avo (https://www.avo.app), friends@avo.app

## License

IosAnalyticsDebugger is available under the MIT license. See the LICENSE file for more info.
