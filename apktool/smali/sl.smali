.class public final Lsl;
.super Lrl;
.source "SourceFile"


# instance fields
.field protected mCashAuthManager:Lyj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetriedAfter401:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lrl;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsl;->mRetriedAfter401:Z

    .line 30
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lsl;)V

    .line 31
    return-void
.end method

.method protected static a(Lti$a;)Ltg;
    .locals 1
    .param p0    # Lti$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 112
    new-instance v0, Lti;

    invoke-direct {v0, p0}, Lti;-><init>(Lti$a;)V

    return-object v0
.end method

.method static synthetic a(Lsl;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lsl;->mRetriedAfter401:Z

    return v0
.end method

.method static synthetic b(Lsl;)Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsl;->mRetriedAfter401:Z

    return v0
.end method

.method static synthetic c(Lsl;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lsl;->a()V

    return-void
.end method

.method static synthetic d(Lsl;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lsl;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 40
    new-instance v0, Lrv;

    invoke-direct {v0}, Lrv;-><init>()V

    .line 41
    new-instance v1, Lsl$1;

    invoke-direct {v1, p0}, Lsl$1;-><init>(Lsl;)V

    iput-object v1, v0, Lrl;->mListener:Lrl$a;

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrl;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 87
    return-void
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
    .line 96
    invoke-super {p0, p1, p2}, Lrl;->a(Ljava/util/List;Z)V

    .line 97
    return-void
.end method

.method protected final b(Ljava/util/List;Z)V
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
    .line 101
    invoke-super {p0, p1, p2}, Lrl;->b(Ljava/util/List;Z)V

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
