.class final Landroid/support/v4/app/NotificationManagerCompatEclair;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelNotification$21184a1(Landroid/app/NotificationManager;I)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method public static postNotification$62d42cd7(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 31
    return-void
.end method
