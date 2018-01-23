  category do
    id '5. Formatting'
    entry do
        name 'General Thoughts'
        notes <<-'END'
           * The work should look like it was performed / created by professionals.
           * You should take care to format your code nicely.
           * In a team **Agree on a common format, everyone should follow this**.
        END
    end
    entry do
        name 'Formatting Purpose'
        notes <<-'END'
            * Code formatting is about communication.
            * Making the code more readable.
            * The Style and discipline / readability survives through changes to the code.
        END
    end
    entry do
        name 'File Size'
        notes <<-'END'
            * Small files are easier to understand than large files.
        END
    end
    entry do
        name 'The Newspaper Metaphor'
        notes <<-'END'
            We would like each source file to read like a newspaper article:

            * At the top you expect a headline.
            * The first paragraph gives you a synopsis of the story.
            * As you continue downward the detail increases.

            In a source file the highest level concepts and algorithms should be the lowest
            level functions and details in the file.
        END
    end
    entry do
        name 'Formatting Notes'
        notes <<-'END'

            ### Vertical Grouping
            * A line should be an expression or clause.
            * A group of lines should express a complete Thoughts
            * Thoughts should be separated by empty lines.

            ### Variables and function positioning
            * Variables should be declared as close to their usage as possible.Our functions are short -> local variables at the top. Control variables for loops => declare them within the loop statement
            * Instance variables should be declared at the top of the class. Everyone should know where to go to see those declarations.
            * If one function calls another they should be vertically close. The caller should be above the callee, if possible.
            * If some functions perform a similar purpose and a common naming scheme (conceptual affinity), they should be close together.
            * Vertical ordering should flow downward from high level to low level functions.

            ### Line lengths and whitespace
            * Keep your lines short! (less than 120 characters)
            * Use whitespace in operators to accentuate them.
            * Use whitespace after the comma in arguments and function calls.
            * Don't put white spaces between function's name and the opening parenthesis => They are closely related

            ### Horizontal Alignment

            * Horizontal alignment is not useful:
                * You read down the list of variable names without looking a their types.
                * You look down the list of values without ever seeing the assignment operator.
                * Automatic reformatting tools usually eliminate it. Example:

            ### Team Rules
            * **Follow the agreed upon team rules above all else!**


            ### Comments
            * Useless comments in a class explaining the classes properties make it more difficult to read. e.g:

            ```
            public class ReporterConfig {
            /**
            * The class name of the reporter listener
            */
            private String m_className;
            /**
            * The properties of the reporter listener
            */
            private List<Property> m_properties = new ArrayList<Property>();

            public void addProperty(Property property) {
                m_properties.add(property);
            }
            ```

            vs

            ```
            public class ReporterConfig {
                private String m_className;
                private List<Property> m_properties = new ArrayList<Property>();

                public void addProperty(Property property) {
                m_properties.add(property);
            }
            ```


        END
    end
  end