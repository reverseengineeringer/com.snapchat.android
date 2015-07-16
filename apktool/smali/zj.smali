.class public final Lzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lzj;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lzj;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lzj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzj;->a:Lzj;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lzj;

    invoke-direct {v0}, Lzj;-><init>()V

    sput-object v0, Lzj;->a:Lzj;

    .line 46
    :cond_0
    sget-object v0, Lzj;->a:Lzj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
