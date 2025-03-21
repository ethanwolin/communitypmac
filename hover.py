from talon import Module, ui, actions

mod = Module()

def calculate_hover_positions():
    screen = ui.main_screen()
    width, height = screen.width, screen.height

    positions = {
        "one": (width / 6, height * 5 / 6),
        "two": (width / 2, height * 5 / 6),
        "three": (width * 5 / 6, height * 5 / 6),
        "four": (width / 6, height / 2),
        "five": (width / 2, height / 2),
        "six": (width * 5 / 6, height / 2),
        "seven": (width / 6, height / 6),
        "eight": (width / 2, height / 6),
        "nine": (width * 5 / 6, height / 6),
    }
    return positions

hover_positions = calculate_hover_positions()

@mod.capture(rule="one|two|three|four|five|six|seven|eight|nine")
def hover_target(m) -> str:
    return m[0]

@mod.action_class
class Actions:
    def hover_move(target: str):
        """Move the mouse to a specified hover target"""
        if target in hover_positions:
            x, y = hover_positions[target]
            actions.mouse_move(x, y)
        else:
            raise ValueError(f"Invalid hover target: {target}")