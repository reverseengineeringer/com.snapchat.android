.class public final Laem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laem$2;,
        Laem$b;,
        Laem$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laem$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laem$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Laej;

.field private final f:Laej$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Laej;->a()Laej;

    move-result-object v0

    invoke-direct {p0, v0}, Laem;-><init>(Laej;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Laej;)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laem;->a:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laem;->b:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laem;->c:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    new-instance v0, Laem$1;

    invoke-direct {v0, p0}, Laem$1;-><init>(Laem;)V

    iput-object v0, p0, Laem;->f:Laej$a;

    .line 70
    iput-object p1, p0, Laem;->e:Laej;

    .line 71
    iget-object v0, p0, Laem;->e:Laej;

    iget-object v1, p0, Laem;->f:Laej$a;

    invoke-virtual {v0, v1}, Laej;->a(Laej$a;)V

    .line 72
    iget-object v0, p0, Laem;->e:Laej;

    const/4 v1, 0x1

    new-array v1, v1, [Laej$a;

    const/4 v2, 0x0

    iget-object v3, p0, Laem;->f:Laej$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Laej;->a([Laej$a;)V

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Laem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget v0, Laem$b;->c:I

    monitor-exit v1

    .line 135
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget v0, Laem$b;->a:I

    monitor-exit v1

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 135
    :cond_1
    :try_start_1
    sget v0, Laem$b;->b:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Laem$a;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v1, p0, Laem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Laem;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p1, p2}, Laem$a;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Laem;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 148
    iget-object v3, p0, Laem;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 149
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    iget-object v0, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    iget-object v0, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem$a;

    .line 153
    invoke-interface {v0}, Laem$a;->b()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-direct {p0, v6}, Laem;->a(Ljava/lang/String;)I

    move-result v1

    .line 155
    sget-object v2, Laem$2;->a:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Laem;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 161
    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v0, v1}, Laem$a;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 169
    :goto_1
    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Laem;->a(Laem$a;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->n()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/MediaState;->isError()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_3

    .line 164
    invoke-interface {v0}, Laem$a;->a()V

    goto :goto_1

    .line 163
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 167
    :cond_3
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laem;->a(Laem$a;Ljava/lang/String;)V

    .line 174
    invoke-interface {v0}, Laem$a;->a()V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v0, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unprocessed intro media state listeners: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Laem$a;)V
    .locals 3
    .param p1    # Laem$a;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v1, p0, Laem;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Laem;->b:Ljava/util/Map;

    invoke-interface {p1}, Laem$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Laem;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Laem;->a()V

    .line 88
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
