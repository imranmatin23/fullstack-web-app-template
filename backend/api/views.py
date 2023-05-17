"""
The views file contains the logic for each view in the App.
"""
from rest_framework import generics
from .serializers import RoomSerializer
from .models import Room
from django.shortcuts import render

# Create your views here.


def index(request):
    """
    Return index.html from static build.
    """
    return render(request, "index.html")


class RoomView(generics.ListAPIView):
    """
    The RoomView is used to create an API View that lists all Room objects.
    """

    # The list of Room objects
    queryset = Room.objects.all()
    # Serializer used to convert the queryset into JSON
    serializer_class = RoomSerializer
