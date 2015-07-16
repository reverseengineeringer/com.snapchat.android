.class public abstract Ltg;
.super Lul;
.source "SourceFile"


# instance fields
.field protected mCashAuthManager:Lyj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mEntityFactory:Lub;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareOkHttpClientFactory:Lva;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Lul;-><init>()V

    .line 33
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Ltg;)V

    .line 34
    new-instance v0, Lut;

    iget-object v1, p0, Ltg;->mEntityFactory:Lub;

    iget-object v2, p0, Ltg;->mSquareOkHttpClientFactory:Lva;

    invoke-direct {v0, v1, v2}, Lut;-><init>(Lub;Lug;)V

    iput-object v0, p0, Ltg;->mNetworkInterface:Lur;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public getHeaders(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Ltg;->mCashAuthManager:Lyj;

    invoke-virtual {v0}, Lyj;->a()Lym;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "We shouldn\'t ever be creating a SquareRequestTask with a null CashAuthToken!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltg;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 52
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lym;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Accept"

    const-string v2, "application/json; charset=utf-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Layy;->a()Layy;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Layy;->c(Z)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    const-string v2, "X-SQ-DEVICE-ID"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lbgr;->a()Lbgr;

    invoke-static {}, Lbgr;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v1/me"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ltg;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 40
    const-string v1, "/"

    invoke-static {v0, v1}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
