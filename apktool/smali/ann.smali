.class public Lann;
.super Lana;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lann$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laka;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lall;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lana;-><init>(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lann;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lann;->h:Lakp;

    if-nez v0, :cond_0

    .line 51
    invoke-static {p1}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    iput-object v0, p0, Lann;->h:Lakp;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lana;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public synthetic getRequestPayload()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lann;->h:Lakp;

    iget-object v1, v1, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lann;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lann;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iget-object v0, p0, Lann;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    invoke-virtual {v0}, Laka;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lann;->h:Lakp;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lakp;->mServerHasMostRecentReplayTime:Z

    :cond_0
    invoke-virtual {v0}, Laka;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lalr;

    invoke-direct {v4, v0}, Lalr;-><init>(Laka;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lann;->c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lann;->b:Ljava/util/List;

    new-instance v0, Lann$a;

    invoke-direct {v0, p0, v1}, Lann$a;-><init>(Lann;Ljava/util/Map;)V

    return-object v0
.end method

.method protected l_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/bq/update_snaps"

    return-object v0
.end method

.method public onResult(Lus;)V
    .locals 5
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-super {p0, p1}, Lana;->onResult(Lus;)V

    .line 102
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lann;->h:Lakp;

    iget-object v1, v0, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    iget-object v0, p0, Lann;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Laka;

    if-eqz v3, :cond_0

    check-cast v0, Laka;

    invoke-virtual {v0, v4}, Laka;->a(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lann;->h:Lakp;

    iput-boolean v4, v0, Lakp;->mServerHasMostRecentReplayTime:Z

    .line 107
    :goto_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lann;->c:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iget-object v1, p0, Lann;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a(Ljava/util/List;)V

    goto :goto_1
.end method
