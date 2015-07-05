.class public final Lqd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqd$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockerManager"


# instance fields
.field protected mCashProviderManager:Lqh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lqd;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 25
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 28
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Lqh;->a()V

    .line 32
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 39
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 42
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 50
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lqh;->a()V

    .line 46
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 56
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lqh;->a()V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method

.method public final d(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 67
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 70
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lqh;->a()V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method

.method public final e(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 83
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lqh;->a()V

    .line 87
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method

.method public final f(Lcom/snapchat/android/model/chat/CashFeedItem;Lqd$a;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lqd$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mProvider:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v1

    invoke-interface {v1}, Lqo;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 100
    iget-object v1, p0, Lqd;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {}, Lqh;->a()V

    .line 103
    invoke-interface {p2}, Lqd$a;->b()V

    goto :goto_0
.end method
