.class public final Lrv;
.super Lqv;
.source "SourceFile"


# instance fields
.field protected mCashAuthManager:Lxn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetriedAfter401:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lqv;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrv;->mRetriedAfter401:Z

    .line 30
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrv;)V

    .line 31
    return-void
.end method

.method protected static a(Lss$a;)Lsq;
    .locals 1
    .param p0    # Lss$a;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 112
    new-instance v0, Lss;

    invoke-direct {v0, p0}, Lss;-><init>(Lss$a;)V

    return-object v0
.end method

.method static synthetic a(Lrv;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lrv;->mRetriedAfter401:Z

    return v0
.end method

.method static synthetic b(Lrv;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrv;->mRetriedAfter401:Z

    return v0
.end method

.method static synthetic c(Lrv;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lrv;->a()V

    return-void
.end method

.method static synthetic d(Lrv;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lrv;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 40
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    .line 41
    new-instance v1, Lrv$1;

    invoke-direct {v1, p0}, Lrv$1;-><init>(Lrv;)V

    iput-object v1, v0, Lqv;->mListener:Lqv$a;

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 87
    return-void
.end method

.method protected final a(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lqv;->a(Ljava/util/List;Z)V

    .line 97
    return-void
.end method

.method protected final b(Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lqv;->b(Ljava/util/List;Z)V

    .line 102
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UNLINK_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
