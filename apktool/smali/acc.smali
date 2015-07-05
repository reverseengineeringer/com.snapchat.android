.class public final Lacc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lacc;-><init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lacc;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lacc;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v0, p0, Lacc;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Ljava/lang/String;

    move-result-object v2

    .line 37
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 38
    :cond_0
    const-string v0, "ContextAwareParamsProvider"

    const-string v1, "Cannot retrieve params, resource params are null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lacc;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
