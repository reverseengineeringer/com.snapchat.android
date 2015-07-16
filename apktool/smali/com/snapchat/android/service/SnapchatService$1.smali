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
    .locals 4

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mStopRunnable mFutureList.size()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v1}, Lcom/snapchat/android/service/SnapchatService;->d(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasPendingIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v1}, Lcom/snapchat/android/service/SnapchatService;->c(Lcom/snapchat/android/service/SnapchatService;)Laph;

    move-result-object v1

    invoke-virtual {v1}, Laph;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->d(Lcom/snapchat/android/service/SnapchatService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-static {v0}, Lcom/snapchat/android/service/SnapchatService;->c(Lcom/snapchat/android/service/SnapchatService;)Laph;

    move-result-object v0

    invoke-virtual {v0}, Laph;->g()Z

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
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatService$1;->a:Lcom/snapchat/android/service/SnapchatService;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatService;->stopSelf()V

    .line 406
    :cond_0
    return-void
.end method
