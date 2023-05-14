"""
The models file is a layer of abstraction that is used to model a database.
"""
import random
import string
from django.db import models


def generate_unique_code():
    """
    Generates a unique code length k composed of uppercase ASCII characters only.

    It implements logic to check for duplicate codes.
    """
    length = 6

    while True:
        code = "".join(random.choices(string.ascii_uppercase, k=length))
        if Room.objects.filter(code=code).count() == 0:
            break

    return code


class Room(models.Model):
    """
    The Room model is used to model a Room object in the database.
    """

    code = models.CharField(max_length=8, default=generate_unique_code, unique=True)
    host = models.CharField(max_length=50, unique=True)
    guest_can_pause = models.BooleanField(null=False, default=False)
    votes_to_skip = models.IntegerField(null=False, default=1)
    created_at = models.DateTimeField(auto_now_add=True)
