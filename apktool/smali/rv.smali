.class public final Lrv;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQAccessTokenBlocker"


# instance fields
.field protected mCashAuthManager:Lyj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCashErrorReporter:Lqw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mForced:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lrl;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrv;->mForced:Z

    .line 35
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lrv;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lrv;-><init>()V

    .line 40
    iput-boolean p1, p0, Lrv;->mForced:Z

    .line 41
    return-void
.end method

.method static synthetic a(Lrv;)V
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrv;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-boolean v0, p0, Lrv;->mForced:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lrv;->mCashAuthManager:Lyj;

    invoke-virtual {v0}, Lyj;->a()Lym;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lym;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lrl;->a(Ljava/util/List;Z)V

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lrv$1;

    invoke-direct {v0, p0, p1}, Lrv$1;-><init>(Lrv;Lcom/snapchat/android/model/CashTransaction;)V

    new-instance v1, Lrb;

    invoke-direct {v1, v0}, Lrb;-><init>(Lqs$a;)V

    invoke-virtual {v1}, Lrb;->execute()V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrl;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lrl;->a(Ljava/util/List;Z)V

    .line 91
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCESS_TOKEN_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
