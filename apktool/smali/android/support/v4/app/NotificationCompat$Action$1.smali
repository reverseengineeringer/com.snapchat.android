.class final Landroid/support/v4/app/NotificationCompat$Action$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 7

    .prologue
    .line 2140
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    check-cast p4, [Landroid/support/v4/app/RemoteInput;

    move-object v5, p4

    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    const/4 v6, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;B)V

    return-object v0
.end method

.method private static newArray(I)[Landroid/support/v4/app/NotificationCompat$Action;
    .locals 1

    .prologue
    .line 2146
    new-array v0, p0, [Landroid/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method


# virtual methods
.method public final synthetic build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 7

    .prologue
    .line 2135
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    check-cast p5, [Landroid/support/v4/app/RemoteInput;

    move-object v5, p5

    check-cast v5, [Landroid/support/v4/app/RemoteInput;

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 1

    .prologue
    .line 2135
    new-array v0, p1, [Landroid/support/v4/app/NotificationCompat$Action;

    return-object v0
.end method
