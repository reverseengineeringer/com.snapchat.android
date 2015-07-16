.class final Laem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laej$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laem;


# direct methods
.method constructor <init>(Laem;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Laem$1;->a:Laem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Laem$1;->a:Laem;

    iget-object v1, v0, Laem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Laem$1;->a:Laem;

    iget-object v0, v0, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 207
    iget-object v3, p0, Laem$1;->a:Laem;

    iget-object v3, v3, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/snapchat/android/discover/model/ChannelPage;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_0
    :try_start_1
    iget-object v0, p0, Laem$1;->a:Laem;

    invoke-virtual {v0}, Laem;->a()V

    .line 210
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
