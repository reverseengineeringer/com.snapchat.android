.class public final Lavk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lbp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lavk;->sInstance:Lbp;

    return-void
.end method

.method public static declared-synchronized a()Lbp;
    .locals 2

    .prologue
    .line 12
    const-class v1, Lavk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lavk;->sInstance:Lbp;

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Lbp;->c()Lbp;

    move-result-object v0

    sput-object v0, Lavk;->sInstance:Lbp;

    .line 16
    :cond_0
    sget-object v0, Lavk;->sInstance:Lbp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
