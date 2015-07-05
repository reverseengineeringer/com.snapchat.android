.class public final Ladm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ladm$2;,
        Ladm$b;,
        Ladm$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ladm$a;",
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
            "Ladm$a;",
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

.field private final e:Ladj;

.field private final f:Ladj$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Ladj;->a()Ladj;

    move-result-object v0

    invoke-direct {p0, v0}, Ladm;-><init>(Ladj;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Ladj;)V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladm;->a:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ladm;->b:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ladm;->c:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ladm;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    new-instance v0, Ladm$1;

    invoke-direct {v0, p0}, Ladm$1;-><init>(Ladm;)V

    iput-object v0, p0, Ladm;->f:Ladj$a;

    .line 70
    iput-object p1, p0, Ladm;->e:Ladj;

    .line 71
    iget-object v0, p0, Ladm;->e:Ladj;

    iget-object v1, p0, Ladm;->f:Ladj$a;

    invoke-virtual {v0, v1}, Ladj;->a(Ladj$a;)V

    .line 72
    iget-object v0, p0, Ladm;->e:Ladj;

    const/4 v1, 0x1

    new-array v1, v1, [Ladj$a;

    const/4 v2, 0x0

    iget-object v3, p0, Ladm;->f:Ladj$a;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ladj;->a([Ladj$a;)V

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Ladm;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Ladm;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget v0, Ladm$b;->c:I

    monitor-exit v1

    .line 135
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Ladm;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    sget v0, Ladm$b;->a:I

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
    sget v0, Ladm$b;->b:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Ladm$a;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 192
    iget-object v1, p0, Ladm;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Ladm;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {p1, p2}, Ladm$a;->a(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ladm;->c:Ljava/util/Set;

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
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v4, p0, Ladm;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    iget-object v0, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladm$a;

    .line 153
    invoke-interface {v0}, Ladm$a;->b()Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-direct {p0, v7}, Ladm;->a(Ljava/lang/String;)I

    move-result v1

    .line 155
    sget-object v2, Ladm$2;->a:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Ladm;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/model/ChannelPage;

    .line 161
    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-interface {v0, v1}, Ladm$a;->a(Lcom/snapchat/android/discover/model/ChannelPage;)V

    .line 169
    :goto_1
    iget-object v1, v1, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ladm;->a(Ladm$a;Ljava/lang/String;)V

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
    invoke-interface {v0}, Ladm$a;->a()V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 163
    goto :goto_2

    .line 167
    :cond_3
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ladm;->a(Ladm$a;Ljava/lang/String;)V

    .line 174
    invoke-interface {v0}, Ladm$a;->a()V

    goto :goto_0

    .line 181
    :cond_4
    iget-object v0, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v0, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    const-string v0, "IntroMediaStateProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unprocessed intro media state listeners: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    monitor-exit v4
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

.method public final a(Ladm$a;)V
    .locals 3
    .param p1    # Ladm$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v1, p0, Ladm;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Ladm;->b:Ljava/util/Map;

    invoke-interface {p1}, Ladm$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Ladm;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Ladm;->a()V

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
