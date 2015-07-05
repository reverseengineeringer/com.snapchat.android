.class public Lcom/snapchat/android/receiver/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Lale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>(Lale;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lale;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lale;

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lale;

    iget-object v2, v1, Lale;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "NetworkStatusManager"

    const-string v4, "Network status changed from %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v1, Lale;->c:Landroid/net/NetworkInfo;

    invoke-static {v7}, Lale;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Lale;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, v1, Lale;->c:Landroid/net/NetworkInfo;

    iget-object v0, v1, Lale;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lald;

    iget-object v4, v1, Lale;->c:Landroid/net/NetworkInfo;

    invoke-interface {v0, v4}, Lald;->a(Landroid/net/NetworkInfo;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :cond_1
    return-void
.end method
