category do
    id '2. Meaningful Names'
    entry do
        name 'Introduction'
        notes 'Names are everywhere in software: variables, functions, args, classes, packages, files...'
    end
    entry do
        name 'Use Intention Revealing Names'
        notes <<-'END'
            The name should answer all the big questions:

            * Why it exists?
            * What it does?
            * How it is used?

            Avoid using names like this:


            ```
            java
            int d; // elapsed time in days
            ```


            Instead of that use a name that specifies what is being measured and his unit:


            ```
            java
            int elapsedTimeInDays;
            ```
            Choosing names that reveal intent can make it much easier to understand and change code.<br>
            <br>
            What the purpose of the code is.


            From this:


            ```
            java
            public List<int[]> getThem() {
                List<int[]> list1 = new ArrayList<int[]>();
                for (int[] x : theList)
                    if (x[0] == 4)
                        list1.add(x);
                return list1;
            }
            ```


            We can improve it only with revealing naming:



            ```
            java
            public List<int[]> getFlaggedCells() {
                List<int[]> flaggedCells = new ArrayList<int[]>();
                for (int[] cell : gameBoard)
                    if (cell[STATUS_VALUE] == FLAGGED)
                        flaggedCells.add(cell);
                return flaggedCells;
            }
            ```
            And it is still better with a Cell class:

            ```
            java
            public List<Cell> getFlaggedCells() {
                List<Cell> flaggedCells = new ArrayList<Cell>();
                for (Cell cell : gameBoard)
                    if (cell.isFlagged())
                        flaggedCells.add(cell);
                return flaggedCells;
            }
            ```
        END
    end
    entry do
        name 'Avoid Disinformation'
        notes <<-'END'
            If you want to name a group of accounts use **accounts** try to avoid *accountList* (maybe its type is not a List

            Beware of using names that are very similar *XYZFooBarClassForBlabla* and *XYZFooBarClassForBlablable*
        END
    end
    entry do
        name 'Make Meaningful Distinctions'
        notes <<-'END'
            Do not use number-series naming: a1, a2, ... aN
            ```java
            public static void copyChars(char a1[], char a2[]) {
                for (int i = 0; i < a1.length; i++) {
                    a2[i] = a1[i];
                }
            }
            ```
            This would be much better with **source** and **destination** as argument names.

            Avoid Noise words (Info, Data, a, an, the, variable, table, String):
            * ProductInfo and ProductData are more or less the same.
            * Is nameString better than name? No.

            The same for methods, what I should do?:
            getActiveAccount() getActiveAccounts() getActiveAccountInfo()
        END
    end
    entry do
        name 'Use Pronounceable Names'
        notes <<-'END'
            If you want to name a group of accounts use **accounts** try to avoid *accountList* (maybe its type is not a List

            Beware of using names that are very similar *XYZFooBarClassForBlabla* and *XYZFooBarClassForBlablable*
        END
    end
    entry do
        name 'Use Searchable Names'
        notes <<-'END'
            Single letter names and numeric constants are not easy to locate across a body of text.
            i.e.:
            ```
            java
            for (int j=0; j<34; j++) {
                s += (t[j]*4)/5;
            }
            ```
            It's better when has searchable names:
            ```
            java
            int realDaysPerIdealDay = 4;
            const int WORK_DAYS_PER_WEEK = 5;
            int sum = 0;
            for (int j=0; j < NUMBER_OF_TASKS; j++) {
                int realTaskDays = taskEstimate[j] * realDaysPerIdealDay;
                int realTaskWeeks = (realdays / WORK_DAYS_PER_WEEK);
                sum += realTaskWeeks;
            }
            ```
        END
    end
    entry do
        name 'Other Naming Tips'
        notes <<-'END'
            * Avoid Encodings
            * Avoid Hungarian Notation
            * Avoid Member Preﬁxes
            * Interfaces and Implementations:
                * Leave interfaces unadorned
                * **ShapeFactory** and **ShapeFactoryImp** are better than **IShapeFactory** and **ShapeFactory**
            * Avoid Mental Mapping - *r* is the lower-cased version of the url with the host and scheme removed... WTF!
            * Clarity is **king**: professionals use their powers for good and write code that others can understand.
            * Class Names:
                * A class name should not be a verb. Avoid words like Manager, Processor, Data, or Info.
                * Good names could be: Customer, WikiPage, Account, AddressParser.
            * Method Names:
                * Methods should have verb or verb phrase names like postPayment, deletePage, save...

            When constructors are overloaded use static factory methods with names that describe the arguments:
            ```
            java
            Complex fulcrumPoint = Complex.FromRealNumber(23.0);
            ```
            better than
            ```
            java
            Complex fulcrumPoint = new Complex(23.0);
            ```

            * Don’t Be Cute
            * Don't use slang!: whack() instead of kill()
            * **Say what you mean. Mean what you say.**
            * Pick One Word per Concept - If you choose *get()* use it always (instead of fetch, retrieve, etc.)
            * Don’t Pun
            * Avoid using the same word for two purposes (*add()* method could mean different things in different classes...)
            * Make your code as easy as possible to understand.
            * Use Solution Domain Names
            * Use pattern names: Factory, Visitor, Decorator, etc.
            * Use Problem Domain Names, And you could ask a domain expert if you have doubts.
            * Add Meaningful Context Variables usually don't have a meaning by themselves. You will need a context. Names like: firstName, lastName, street, postalCode, etc. Are names from an address. If you have problems with context you can add a prefix: addrFirstName, addrLastName, etc. But It would be better if you put them into a class Address => you will have a great context.
            * When a method has a lot of variables with an unclear context you can try to break it into smaller functions.
            * Don’t Add Gratuitous Context - Don't use prefix in all your classes/methods to say that they belongs to an specific context.
            Gas Station Deluxe => GSD and then you have: GSDAccountAddress... it is not a good name.

            * Shorter names are generally better than longer ones.
        END
    end
  end