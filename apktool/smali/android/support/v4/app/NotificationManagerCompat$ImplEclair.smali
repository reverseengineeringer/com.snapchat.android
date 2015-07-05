.class Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImplEclair"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelNotification$21184a1(Landroid/app/NotificationManager;I)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p1, p2}, Landroid/support/v4/app/NotificationManagerCompatEclair;->cancelNotification$21184a1(Landroid/app/NotificationManager;I)V

    .line 147
    return-void
.end method

.method public final postNotification$62d42cd7(Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 152
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/NotificationManagerCompatEclair;->postNotification$62d42cd7(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 154
    return-void
.end method
