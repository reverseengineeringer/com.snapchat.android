.class public final Lbsd;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/location/Location;


# direct methods
.method public static declared-synchronized a()Landroid/location/Location;
    .locals 2

    .prologue
    .line 16
    const-class v0, Lbsd;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbsd;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Z
    .locals 2

    .prologue
    .line 20
    const-class v1, Lbsd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbsd;->a:Landroid/location/Location;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
