.class public final Lale;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lale;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/net/NetworkInfo;

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lale;

    invoke-direct {v0}, Lale;-><init>()V

    sput-object v0, Lale;->d:Lale;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lale;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 46
    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    :goto_1
    invoke-direct {p0, v2, v0}, Lale;-><init>(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)V

    .line 48
    return-void

    :cond_0
    move-object v2, v1

    .line 46
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private constructor <init>(Landroid/net/ConnectivityManager;Landroid/net/wifi/WifiManager;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lale;->a:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lale;->b:Ljava/util/Set;

    .line 52
    iput-object p1, p0, Lale;->e:Landroid/net/ConnectivityManager;

    .line 53
    iput-object p2, p0, Lale;->f:Landroid/net/wifi/WifiManager;

    .line 54
    return-void
.end method

.method public static a()Lale;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lale;->d:Lale;

    return-object v0
.end method

.method public static a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "None"

    goto :goto_0
.end method


# virtual methods
.method public final a(Lald;)V
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Lale;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lale;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lale;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lale;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lale;->c:Landroid/net/NetworkInfo;

    .line 63
    iget-object v0, p0, Lale;->c:Landroid/net/NetworkInfo;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lald;)V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lale;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lale;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Landroid/net/wifi/WifiInfo;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lale;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lale;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v0, p0, Lale;->f:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 74
    :cond_0
    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 4
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 99
    const-string v0, "unknown"

    .line 100
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 102
    const-string v0, "wifi"

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v0, "wwan"

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "not_reachable"

    goto :goto_0
.end method
