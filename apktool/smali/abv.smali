.class public final Labv;
.super Ltg;
.source "SourceFile"


# instance fields
.field private final mEditionId:Ljava/lang/String;

.field private final mEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ltg;-><init>()V

    .line 25
    iput-object p1, p0, Labv;->mEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 26
    iput-object p2, p0, Labv;->mEditionId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Labv;-><init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "edition"

    iget-object v2, p0, Labv;->mEditionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Labv;->mEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    iget-object v1, v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Latq;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
