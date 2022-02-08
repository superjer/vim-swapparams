vim-swapparams
==============
Swap the function call param under your cursor with the next or previous one

Type `gs` to swap with next, or `gb` to swap with previous.

Stomps the builtin `gs` command. But don't worry it's not a good one :)

Examples with cursor at caret position:

<pre>
    Test:
        function_call("some", silly, parameters + 1);
                              ^gs
    Result:
        function_call("some", parameters + 1, silly);

    Test:
        function_call("some", silly, parameters + 1);
                                ^gb
    Result:
        function_call(silly, "some", parameters + 1);
</pre>


