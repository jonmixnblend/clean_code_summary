  category do
    id '6. Objects and Data Structures'
    entry do
        name 'Data Abstraction'
        notes <<-'END'
           * We keep our variables **private**.
           * Then nobody depends on them.
           *This gives us freedom to change their type
           implementation. If you don't need them them don't expose them with public getters and setters.
           * Data abstractions. Hiding implementation is about abstractions. A class isn't just hiding its'
           variables with getters and setters. It's basically abstracting the interfaces to the data, which
           allow users to manipulate that data without having to know the implementation.


           e.g.

           Concrete point:

           ```
           public class Point {
            public double x;
            public double y;
            }
           ```

           Abstract Point:

           ```
           public interface Point {
            double getX();
            double getY();
            void setCartesian(double x, double y);
            double getR();
            double getTheta();
            void setPolar(double r, double theta);
            }
           ```

           Abstract point is hiding its implementation. The methods enforce an access policy => read
           co-ordinates independently but write them together.

           Concrete vehicle:

           ```
            public interface Vehicle {
                double getFuelTankCapacityInGallons();
                double getGallonsOfGasoline();
            }
           ```

           Abstract vehicle:

           ```
            public interface Vehicle {
                double getPercentFuelRemaining();
            }
           ```

           Abstract vehicle doesn't expose the details of the data.

           * The worst option is to blithely add getters and setters.
        END
    end
    entry do
        name 'Data/Object Anti-Symmetry'
        notes <<-'END'

            * Objects hide their data behind abstractions and expose functions that operate on that data..
            * Data structures expose their data and have no meaningful functions.

            OO code vs Procedural code.

            * OO code makes it easy to add new classes without changing existing functions.
            * Procedural code makes it easy to add new functions without changing the existing data structures.
            * OO code makes hard to add new functions because all the classes must change.
            * Procedural code makes it hard to add new data structures because all the functions must change.

            **Sometimes you need data structures and sometimes you need objects!**
        END
    end
    entry do
        name 'The Law of Demeter'
        notes <<-'END'
            **Talk to friends, not to strangers**

            A method 'f' of a class 'C' should only call methods of these:

            * C
            * An object created by f
            * An object passed as an argument to f
            * An object held in an instance variable of C

            Avoid this (called a train wreck):

            ```
                final String outputDir = ctxt.getOptions().getScratchDir().getAbsolutePath();
            ```

            Try to split them:

            ```
                Options opts = ctxt.getOptions();
                File scratchDir = opts.getScratchDir();
                final String outputDir = scratchDir.getAbsolutePath();
            ```

            By this (a trainwreck) we mean a bunch of coupled train cars! Is this a violation of Demeter's Law? it depends...

            * If context, options and scratchDir are objects is a clear violation of the Law.
            * If they are data structures with no behavior Demeter's Law does not apply.

            If it was a data structure you would use it in this way:

            ```
                final String outputDir = ctxt.options.scratchDir.absolutePath;
            ```

        END
    end
    entry do
        name 'Hybrids'
        notes <<-'END'

            Public fields + methods => Avoid creating them.

            You get the worst of both words: hard to add new functions and hard to add new data structures.
        END
    end
    entry do
        name 'Hiding Structure'
        notes <<-'END'
            You could think in these options:

            ```
                ctxt.getAbsolutePathOfScratchDirectoryOption();
            ```

            => explosion of methods in ctxt object or

            ```
                ctx.getScratchDirectoryOption().getAbsolutePath();
            ```

            => It returns a data structure, not an object.


            Neither option feels good.


            You tell an object to do something - you should not be asking it about its internals.
            Why do you want to know the absolute path. To create something:


                This is much much better.

            ```
            BufferedOutputStream bos = ctxt.createScratchFileStream(classFileName);
            ```


            => ctx hides its internals and we are not violating Demeters' law.
        END
    end
    entry do
        name 'Data Transfer Objects'
        notes <<-'END'
           * These are structures to communicate with databases, parsing messages from sockets...
           * You usually use Beans (Java) => private properties with getters and setters. It
           is ok for an OO purist but there aren't really any other benefits.
        END
    end
    entry do
        name 'Active Record'
        notes <<-'END'
            * These are data structures with public (or beans) properties and methods like save, find, etc.
            * Developers put business logic in them => This is an error! Business logic should not
            be held here.
        END
    end
    entry do
        name 'Conclusion'
        notes <<-'END'
           Choose the **right approach**:

           * Flexibility to add new data types calls for the use of objects.
           * Flexibilty to add new behaviors calls for data types and procedures.
        END
    end
  end