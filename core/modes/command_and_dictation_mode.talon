mode: command
mode: dictation
-
^(dictation mode|dictate)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
^command mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
^(mixed mode|mixer)$:
  mode.disable("sleep")
  mode.enable("dictation")
  mode.enable("command")