.class public final Lavv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# instance fields
.field private final mInnerCallback:Lavy;

.field public mIsCanceled:Z

.field public final mMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lavy;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lavv;->mMutex:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavv;->mIsCanceled:Z

    .line 14
    iput-object p1, p0, Lavv;->mInnerCallback:Lavy;

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lavv;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lavv;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 33
    monitor-exit v1

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Lavv;->mInnerCallback:Lavy;

    invoke-interface {v0, p1, p2}, Lavy;->a(Lavo;Lavx;)V

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
