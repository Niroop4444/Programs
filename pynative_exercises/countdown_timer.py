# Create a simple countdown timer using a while loop.

import time

def countdown_timer(seconds):
    while seconds > 0:
        print(f"Time remaining: {seconds} seconds")
        time.sleep(1)
        seconds -= 1
    print("Time's up!")


time_in_seconds = 10
countdown_timer(time_in_seconds)