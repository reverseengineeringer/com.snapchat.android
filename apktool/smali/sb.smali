.class public final Lsb;
.super Lrl;
.source "SourceFile"


# instance fields
.field protected mCashCardManager:Lyn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lrl;-><init>()V

    .line 25
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lsb;)V

    .line 26
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
    .line 30
    iget-object v0, p0, Lsb;->mCashCardManager:Lyn;

    invoke-virtual {v0}, Lyn;->b()V

    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Lrl;->a(Ljava/util/List;Z)V

    .line 32
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
    .line 37
    invoke-super {p0, p1, p2}, Lrl;->a(Ljava/util/List;Z)V

    .line 38
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFLICT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
