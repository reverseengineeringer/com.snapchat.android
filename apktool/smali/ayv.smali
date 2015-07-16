.class public final Layv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbxr;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CbcSlightlySecurePreferences"


# instance fields
.field public mGson:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final mPrefKeyToMapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lazf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lays;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSlightlySecurePreferences:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Layv;->mPrefKeyToMapMap:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Layv;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lq;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lays;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Layv$1;

    invoke-direct {v0, p0}, Layv$1;-><init>(Layv;)V

    invoke-virtual {v0}, Layv$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 51
    iget-object v1, p0, Layv;->mGson:Laum;

    invoke-virtual {v1, p1, v0}, Laum;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final a(Lazf;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lays;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Layv;->mSlightlySecurePreferences:Laze;

    iget-object v1, p0, Layv;->mGson:Laum;

    invoke-virtual {v1, p2}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final a(Ljava/util/List;Lazf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Lazf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 236
    invoke-virtual {v0}, Lakl;->aw()Lays;

    move-result-object v3

    .line 237
    iget-object v0, v0, Lakl;->mMediaId:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Layv;->mGson:Laum;

    invoke-virtual {v0, v1}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Layv;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v1, p2, v0}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 241
    return-void
.end method
