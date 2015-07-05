.class public final Lwd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lwe;


# direct methods
.method public static declared-synchronized a()Lwc;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lwd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lwd;->a:Lwe;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lwe;

    invoke-direct {v0}, Lwe;-><init>()V

    sput-object v0, Lwd;->a:Lwe;

    .line 17
    :cond_0
    sget-object v0, Lwd;->a:Lwe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
