.class public final Lzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lalz;


# static fields
.field private static f:Lzb;


# instance fields
.field public a:Lakx;

.field public final b:Lzm;

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
    .line 50
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzb;-><init>(Lama;Lzm;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lama;Lzm;)V
    .locals 1
    .param p1    # Lama;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lzm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lzb;->e:I

    .line 56
    iput-object p2, p0, Lzb;->b:Lzm;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzb;->c:Ljava/util/Map;

    .line 58
    invoke-virtual {p1, p0}, Lama;->a(Lalz;)V

    .line 59
    return-void
.end method

.method public static declared-synchronized a()Lzb;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lzb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzb;->f:Lzb;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lzb;

    invoke-direct {v0}, Lzb;-><init>()V

    sput-object v0, Lzb;->f:Lzb;

    .line 69
    :cond_0
    sget-object v0, Lzb;->f:Lzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 4

    .prologue
    .line 73
    const-class v1, Lzb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzb;->f:Lzb;

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lzb;->f:Lzb;

    iget-object v0, v0, Lzb;->c:Ljava/util/Map;

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

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lzb;->f:Lzb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/NetworkInfo;)V
    .locals 4
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzb;->g:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lzb;->a:Lakx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzb;->a:Lakx;

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

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

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;)I

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 82
    iput-boolean p1, p0, Lzb;->g:Z

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lzb;->e:I

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHAT_SESSIONS_ESTABLISHED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    iget v2, p0, Lzb;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    goto :goto_0
.end method
