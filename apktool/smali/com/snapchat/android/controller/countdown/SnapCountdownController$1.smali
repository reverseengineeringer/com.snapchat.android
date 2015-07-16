.class final Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/controller/countdown/SnapCountdownController;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 310
    iget-object v4, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    iget-object v5, v4, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a:Ljava/lang/Object;

    monitor-enter v5

    const-wide v2, 0x7fffffffffffffffL

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, v4, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, v4, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzt;

    invoke-virtual {v0}, Lzt;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lzt;->a()J

    move-result-wide v8

    invoke-virtual {v0}, Lzt;->a()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v1, v10

    int-to-long v10, v1

    invoke-virtual {v0}, Lzt;->d()Ljava/util/Set;

    move-result-object v1

    iget-object v7, v0, Lzt;->c:Laka;

    long-to-int v10, v10

    invoke-virtual {v7, v10}, Laka;->d(I)V

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    sget-object v1, Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;->EXPIRE:Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;

    invoke-virtual {v4, v0, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(Lzt;Lcom/snapchat/android/controller/countdown/SnapCountdownController$Action;)V

    :goto_1
    iget-object v1, v4, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->d:Lcom/squareup/otto/Bus;

    new-instance v7, Lbcl;

    iget-object v0, v0, Lzt;->c:Laka;

    iget-object v0, v0, Laka;->mSender:Ljava/lang/String;

    invoke-direct {v7, v0}, Lbcl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzu;

    iget-object v10, v0, Lzt;->c:Laka;

    invoke-interface {v1, v10, v8, v9}, Lzu;->a(Laka;J)V

    goto :goto_2

    :cond_2
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v8, 0x64

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_3
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    invoke-virtual {v4, v2, v3}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->a(J)V

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
