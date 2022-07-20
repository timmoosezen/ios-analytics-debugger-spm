# IosAnalyticsDebugger

## Installation

This is the Swift Package Manager repo, you can also use Analytics Debugger via [CocoaPods](https://github.com/avohq/ios-analytics-debugger)

# Create the debugger instance

Obj-C

    AnalyticsDebugger * debugger = [AnalyticsDebugger new];

Swift

    let debugger = AnalyticsDebugger()
    
# Debugger instance management

1. The debugger object maintains the history of your analytics events, so to share the history between different screens you should use the same debugger instance. We recommend to have a singleton that you provide or inject to your screens. A simple example can be found [here](https://github.com/avohq/ios-analytics-debugger/blob/master/Example/IosAnalyticsDebugger/AVOAppDelegate.m#L12).

2. Even if your app only has one screen (common case in PoC apps), remember to keep a reference to the `AnalyticsDebugger` instance somewhere. Otherwise it will become unresponsive to touches.

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

# Using with Avo Inspector

We suggest to include the Analytics Debugger to you development and staging builds and call it alongside Inspector.

Place the `debugger.debugEvent` call right after the `inspector.trackSchemaFromEvent` call. The parameters of the calls are the same, so you can do

Obj-C

    [self.inspector trackSchemaFromEvent:eventName eventParams:params];
    [self.debugger debugEvent:eventName eventParams:params];

Swift

    inspector.trackSchema(fromEvent:eventName, eventParams:params)
    debugger.debugEvent(eventName, eventParams:params)

# Using with Avo Functions

When using Avo generated code you'll be calling the `init` methods. Actual interface of the methods depends on your schema setup, but there will be init or constructor method with `debugger` parameter, where you can pass an instance of `AnalyticsDebugger`.

Obj-C

    [Avo initAvoWithEnv:AVOEnvDev ... debugger:debugger];

Swift

    avo = Avo(env: .dev, ..., debugger: debugger)

After that all events from Avo function calls will be automatically accessable in the debugger UI.

## Author

Avo (https://www.avo.app), friends@avo.app

## License

IosAnalyticsDebugger is available under the MIT license. See the LICENSE file for more info.
