  category do
    id '4. Comments'
    entry do
        name 'General Thoughts'
        notes <<-'END'
            * If we were expressive enough in our programming language we would not need comments.
            * The proper use of comments is to compensate for failure to express yourself in code.
            * Comments are always failures. **Express yourself in the code**.
            * Code changes around and evolves without updating the comments and then the comments lie.
            * Comments do not make up for bad code.
        END
    end
    entry do
        name 'Explain yourself in the code'
        notes <<-'END'
            Do not do this:

            ```
                // Check to see if the employee is eligible for full benefits
                if (employee.flags && HOURLY_FLAG) && (employee.age >65)) {
            ```

            vs:

            ```
                // Check to see if the employee is eligible for full benefits
                if (employee.isEligibleForFullBenefits()){
            ```

            Now you can remove that comment because the code speaks for itself.
        END
    end
    entry do
        name 'Good Comments'
        notes <<-'END'
            * The only good comment is a comment you found a way not to write.
            * If your code can't speak for itself, you may explain intent.
            * If you absolutely can't make anything more readable, you may clarify what something is doing.
            * Warning of consequences - if you absolutely have to.
            * Do not leave loads of TODO comments scattered around your code. If you do, make sure you try to get rid of
              them regularly.
            * Amplification. If something is very important you can amplify it with a comment.
        END
    end
    entry do
        name 'Bad Comments'
        notes <<-'END'
            * Mumbling: Do not talk to yourself in the code. E.g. a try catch block where the catch block is empty, but has a
            comment in it. Was the author trying to tell himself to come later to do it?
            * Any comment that forces you to look in another module to know the meaning is wrong.
            * Redundant Comments:
                * Contain less information than the code.
                * Is not easier to read than the code.
                * Is less precise than the code.
            * Misleading comments. Comments which have gone out of date and mis-explain the code.
            * Mandated or Journal comments. Do we really need author params any more. This is what we have SCM control for?
            * Noise comments. Auto generated or really obvious comments that are nothing but noise.

            Don't use comments when you can use a function or a variable to explain yourself. Consider the following:

            ```
            // does the module from the global list <mod> depend on the
            // subsystem we are part of?
            if (smodule.getDependSubsystems().contains(subSysMod.getSubSystem()))
            ```

            This could be rephrased without the comment as

            ```
            ArrayList moduleDependees = smodule.getDependSubsystems();
            String ourSubSystem = subSysMod.getSubSystem();
            if (moduleDependees.contains(ourSubSystem))
            ```

            * Position markers: things like // Actions //////////////////////////////////////////////// (Does this also
            apply to SASS for instance, where class names and ID's are forced upon you and it's useful to mark positions
            for file navigation. Actually yes it is, because we could still subdivide into clearly named files.)
            * Closing Brace Comments: If you are doing this, you should be writing shorter functions instead.
            * Attributions and bylines. This is why we have SCM's. Use them for this.
            * Commented out Code: Trust your SCM, delete the code!
            * HTML comments: This should never be in source. Makes them really hard to read.
            * Non local comments: They should only explain code that is close to them.
            * Too much information.
            * Inobvious Connection - If the comment needs it's own explanation.
            * Function Headers - Short functions do not need much explanation. It's better to choose names than write a long
              header about what the function does.
        END
    end
  end