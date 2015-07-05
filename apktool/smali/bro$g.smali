.class Lbro$g;
.super Ljava/lang/Object;

# interfaces
.implements Lbrn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object v4, p0, Lbro$g;->a:Lorg/json/JSONObject;

    .line 519
    invoke-static {}, Lbro;->c()Lbrd;

    move-result-object v0

    iget-boolean v0, v0, Lbrd;->c:Z

    if-eqz v0, :cond_1

    .line 523
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    .line 524
    invoke-static {}, Lbro;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 525
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_3

    .line 532
    :try_start_0
    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    const-string v2, "available"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 533
    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    const-string v2, "connected"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 534
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    const-string v2, "connecting"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 538
    :cond_0
    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    const-string v2, "failover"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 539
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    const-string v2, "roaming"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 547
    :cond_1
    :goto_1
    return-void

    .line 539
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 544
    :catch_0
    move-exception v0

    iput-object v4, p0, Lbro$g;->a:Lorg/json/JSONObject;

    .line 545
    invoke-static {}, Lbtd;->c()V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lbro$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lbro$g;->a:Lorg/json/JSONObject;

    return-object v0
.end method
