.class final Lcom/snapchat/android/service/SnapchatService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/service/SnapchatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/service/SnapchatService;


# direct methods
.method constructor <init>(Lcom/snapchat/android/service/SnapchatService;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 399
    const-string v0, "SnapchatService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mStopRunnable mFutureList.size()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v2}, Lcom/snapchat/android/service/SnapchatService;->d(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hasPendingIntents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v2}, Lcom/snapchat/android/service/SnapchatService;->c(Lcom/snapchat/android/service/SnapchatService;)Laol;

    move-result-object v2

    invoke-virtual {v2}, Laol;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->d(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->c(Lcom/snapchat/android/service/SnapchatService;)Laol;

    move-result-object v0

    invoke-virtual {v0}, Laol;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v2}, Lcom/snapchat/android/service/SnapchatService;->e(Lcom/snapchat/android/service/SnapchatService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 403
    const-string v2, "SnapchatService"

    const-string v3, "Stop service which lived for %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatService;->stopSelf()V

    .line 406
    :cond_0
    return-void
.end method
