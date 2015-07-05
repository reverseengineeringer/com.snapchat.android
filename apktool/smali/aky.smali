.class public final Laky;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Laky;


# instance fields
.field public final a:Lale;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lalj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Laky;

    invoke-direct {v0}, Laky;-><init>()V

    sput-object v0, Laky;->b:Laky;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lale;->a()Lale;

    move-result-object v0

    invoke-direct {p0, v0}, Laky;-><init>(Lale;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lale;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laky;->c:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laky;->d:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Laky;->a:Lale;

    .line 46
    return-void
.end method

.method public static a()Laky;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Laky;->b:Laky;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lalj;
    .locals 3
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Laky;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Laky;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalj;

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lalj;

    invoke-direct {v0}, Lalj;-><init>()V

    .line 143
    iget-object v2, p0, Laky;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 6
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Laky;->a:Lale;

    invoke-virtual {v2}, Lale;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 124
    const-string v3, "WIFI-%s-%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v2, p0, Laky;->a:Lale;

    invoke-virtual {v2}, Lale;->b()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    if-eqz v0, :cond_2

    .line 129
    const-string v0, "WAN"

    goto :goto_0

    :cond_1
    move v0, v1

    .line 128
    goto :goto_1

    .line 131
    :cond_2
    const-string v0, "NO_NETWORK"

    goto :goto_0
.end method
