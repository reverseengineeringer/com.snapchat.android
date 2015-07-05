.class public final Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lald;


# static fields
.field private static f:Lyf;


# instance fields
.field public a:Lakc;

.field public final b:Lyq;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:I

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lyf;-><init>(Lale;Lyq;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Lale;Lyq;)V
    .locals 1
    .param p1    # Lale;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lyq;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lyf;->e:I

    .line 55
    iput-object p2, p0, Lyf;->b:Lyq;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyf;->c:Ljava/util/Map;

    .line 57
    invoke-virtual {p1, p0}, Lale;->a(Lald;)V

    .line 58
    return-void
.end method

.method public static declared-synchronized a()Lyf;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lyf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyf;->f:Lyf;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lyf;

    invoke-direct {v0}, Lyf;-><init>()V

    sput-object v0, Lyf;->f:Lyf;

    .line 68
    :cond_0
    sget-object v0, Lyf;->f:Lyf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 4

    .prologue
    .line 72
    const-class v1, Lyf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyf;->f:Lyf;

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lyf;->f:Lyf;

    iget-object v0, v0, Lyf;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 74
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lyf;->f:Lyf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_1
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 92
    const-string v0, "ChatConnectionMonitor"

    const-string v1, "CHAT-LOG: ChatConnectionMonitor onConnectivityChanged %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyf;->g:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lyf;->a:Lakc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyf;->a:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaje;)I

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 81
    iput-boolean p1, p0, Lyf;->g:Z

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lyf;->e:I

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSIONS_ESTABLISHED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    iget v2, p0, Lyf;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method
