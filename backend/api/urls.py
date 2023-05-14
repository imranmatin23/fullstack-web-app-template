"""
The urls file defines the endpoints for the backend.
"""
from django.urls import path
from .views import RoomView

# Defines the mapping of endpoints and to views that are rendered for that endpoint
urlpatterns = [
    path("room", RoomView.as_view()),
]
