package com.microsoft.xbox.services;

public class NotificationResult {
    public enum NotificationType {
        GAME_INVITE
    }

    public NotificationType notificationType = NotificationType.GAME_INVITE;
    public String title = "";
    public String body = "";
    public String data = "";
}