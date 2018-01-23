  category do
    id '3. Functions'
    entry do
      name 'Naming And Purpose'
      notes <<-'END'
        * Functions are the first line of organisation in any program.
        * They should be small. They should **be less than 20 lines long**, mostly.
        * Their **purpose** should be **transparently obvious**.
        * They should tell a story.
        * They should lead you through the program in a compelling order.
        * They should **do one thing and one thing only**.
        * We create functions to decompose a larger concept (the name of the function) into a set of steps at the next level of abstraction.
        * A function divided into sections is probably doing more than one thing.
        * Do not mix levels of abstraction in a function.
        * Switch statements always do N things. Use to create polymorphic objects. Abstract Factory Pattern.
        * Use descriptive names for functions. Be conistent with them (same verbs). Don't be afraid to make them long.
            * e.g. **includeSetupAndTeardownPages, includeSetupPages, includeSetupPage...**
      END
    end
    entry do
      name 'Blocks and Indentation'
      notes <<-'END'
        * The blocks within *if*, *else*, *while*, etc. statements should be one line long.
        * That line should probably will be a function call.
        * This function call can have a nice and descriptive name
        * The indent level of a function should not be greater than one or two.
      END
    end
    entry do
      name 'Function Arguments'
      notes <<-'END'
        * Argument Nomenclature:
            * Zero arguments (niladic)
            * One argument (monadic)
            * Two arguments (dydadic)
            * ~~Three arguments (triadic)~~
            * ~~Four arguments~~
        * Zero arguments > One argument > Two arguments
        * **Avoid output arguments**, they are not easy to understand.
        * Output arguments are counterintuitive. Readers expect arguments to be inputs, not outputs. If your function must change the state of something, have it change the state of the object it is called on.
      END
    end
  end