# SwiftUI

1. Breaking down SwiftUI.

- It is a declarative UI framework.
- So we describe what we want on the screen and it is rendered out for us.
- In SwiftUI we work with View's and everything is a Structure which is a value type and every time it is modified a new copy of it is created.
- When you modify the state of a view you have to keep the same view identity so the view will not be recreated it will just modify the state of the view.
- `@State` property wrapper allows us to store value in memory so that when our views recompute themselves we can reflect the correct state of our objects.
- So if we want to show some data that can potentially change in the future we use `@State`.
- `let _ = Self._printChanges()` will show us the changes that happened in our view, so when a state property gets changed you will be able to see that it rerenders our entire View.
- If you want to animate a View you will need to use the ternary operator.
- If you want to show and hide a view then you can use if/else.
- Each view has its own lifecycle where we can see if it has been added or removed from the screen.
- `@Binding` is a property wrapper that allows you to bind a value between two different views.
 
