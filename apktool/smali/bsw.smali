.class public final Lbsw;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    invoke-static {}, Lbtd;->e()V

    .line 51
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lbsw;->a:Landroid/net/ConnectivityManager;

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lbtd;->e()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lbra;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lbsw;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lbra;->c:Lbra;

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    iget-object v0, p0, Lbsw;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    :cond_1
    sget-object v0, Lbra;->d:Lbra;

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 68
    invoke-static {v0}, Lbra;->a(I)Lbra;

    move-result-object v0

    goto :goto_0
.end method
