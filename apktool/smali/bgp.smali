.class public final Lbgp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a()Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lbgp;->a()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 48
    const-string v0, "unknown"

    .line 49
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 51
    const-string v0, "wifi"

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v0, "wwan"

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "not_reachable"

    goto :goto_0
.end method
