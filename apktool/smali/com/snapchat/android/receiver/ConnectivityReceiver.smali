.class public Lcom/snapchat/android/receiver/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Lama;


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
    invoke-static {}, Lama;->a()Lama;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>(Lama;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Lama;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lama;

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    invoke-static {p1}, Lkkkkkk/kkxxkk;->b041E041EОО041EО(Landroid/content/Context;)V

    invoke-static {p1}, Lkkkkkk/xkkkxk;->b041E041EООО041E(Landroid/content/Context;)V

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
    iget-object v1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lama;

    iget-object v2, v1, Lama;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x2

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lama;->c:Landroid/net/NetworkInfo;

    invoke-static {v5}, Lama;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Lama;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v0, v1, Lama;->c:Landroid/net/NetworkInfo;

    iget-object v0, v1, Lama;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalz;

    iget-object v4, v1, Lama;->c:Landroid/net/NetworkInfo;

    invoke-interface {v0, v4}, Lalz;->a(Landroid/net/NetworkInfo;)V

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
