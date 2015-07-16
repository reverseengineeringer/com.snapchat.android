.class public final Laed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Laed;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Laed;

    invoke-direct {v0}, Laed;-><init>()V

    sput-object v0, Laed;->d:Laed;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->e:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->f:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->g:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->h:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->b:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laed;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Laed;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Laed;->d:Laed;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPanel;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Laed;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 257
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Laed;->a:Ljava/util/Map;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Laed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 245
    iget-object v3, p0, Laed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 1
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laed;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laed;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Laed;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 65
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 70
    :goto_1
    return v0

    .line 66
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 70
    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Laed;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 177
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 182
    :goto_1
    return v0

    .line 178
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPanel;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 4
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPanel;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Laed;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 268
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 273
    :goto_1
    return v0

    .line 269
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 273
    goto :goto_1
.end method

.method public final b(Lcom/snapchat/android/discover/model/ChannelPage;)Z
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laed;->e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Laed;->f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Laed;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 91
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 96
    :goto_1
    return v0

    .line 92
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1
.end method

.method public final b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/DSnapPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 217
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Laed;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 212
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 215
    goto :goto_0

    .line 213
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    :cond_2
    move v0, v2

    .line 217
    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Laed;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 54
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Laed;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 117
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    move v0, v1

    .line 122
    :goto_1
    return v0

    .line 118
    :cond_0
    const-string v0, "NONE"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 122
    goto :goto_1
.end method

.method public final d(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 79
    iget-object v0, p0, Laed;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 80
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public final d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z
    .locals 5
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/model/MediaState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Laed;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 151
    invoke-virtual {p2, v0}, Lcom/snapchat/android/discover/model/MediaState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 152
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    aput-object v4, v3, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v2

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    move v0, v2

    .line 154
    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "NONE"

    goto :goto_1

    :cond_2
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method public final e(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 105
    iget-object v0, p0, Laed;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 106
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public final f(Lcom/snapchat/android/discover/model/ChannelPage;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 2
    .param p1    # Lcom/snapchat/android/discover/model/ChannelPage;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->SUCCESS:Lcom/snapchat/android/discover/model/MediaState;

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 134
    :cond_1
    iget-object v0, p0, Laed;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/ChannelPage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    .line 135
    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method
