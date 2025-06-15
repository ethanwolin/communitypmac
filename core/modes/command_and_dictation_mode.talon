mode: command
mode: dictation
language: en
-
^(dictation mode|dictate)$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    user.gdb_disable()
^(command mode|over)$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
^(mixed mode|mixer)$:
  mode.disable("sleep")
  mode.enable("dictation")
  mode.enable("command")