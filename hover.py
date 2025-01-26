from talon import Module, actions

mod = Module()

# Define the hover positions as a dictionary
hover_positions = {
    "seven": (240, 150),
    "eight": (720, 150),
    "nine": (1200, 150),
    "four": (240, 450),
    "five": (720, 450),
    "six": (1200, 450),
    "one": (240, 750),
    "two": (720, 750),
    "three": (1200, 750),
}

@mod.capture(rule="|".join(hover_positions.keys()))
def hover_target(m) -> str:
    """
    Capture for hover targets. Matches keys in hover_positions.
    Returns the name of the hover target as a string.
    """
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