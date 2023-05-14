"""
The serializers file is used to convert models into JSON.
"""
from rest_framework import serializers
from .models import Room


class RoomSerializer(serializers.ModelSerializer):
    """
    Defininition of the Serializer for the Room model.
    """

    class Meta:
        """
        The Meta class is used here to enable changing the behavior of your model fields.
        """

        # The Model to use for the Serializer
        model = Room

        # Note the id field is automatically inserted as the PK for all database items
        fields = (
            "id",
            "code",
            "host",
            "guest_can_pause",
            "votes_to_skip",
            "created_at",
        )
