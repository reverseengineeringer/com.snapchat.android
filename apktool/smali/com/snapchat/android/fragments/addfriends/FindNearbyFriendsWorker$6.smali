.class final Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 260
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->c(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lahr;

    move-result-object v0

    invoke-virtual {v0}, Lahr;->d()Landroid/location/Location;

    move-result-object v4

    .line 261
    if-nez v4, :cond_0

    .line 262
    const-string v0, "FindNearbyFriendsWorker"

    const-string v1, "Could not get location, can\'t cancel polling."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->d(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Lbgk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->e(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)J

    move-result-wide v2

    sub-long v7, v0, v2

    .line 267
    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->g(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Laol;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->f(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-string v9, "delete"

    invoke-virtual/range {v0 .. v9}, Laol;->a(Landroid/content/Context;DDLjava/lang/Float;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    new-instance v1, Lamx;

    invoke-direct {v1, v0}, Lamx;-><init>(Landroid/content/Intent;)V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$6;->a:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;->f(Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lamx;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 267
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
