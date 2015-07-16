.class public final Lsg;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQPhoneNumberBlocker"


# instance fields
.field protected mCashErrorReporter:Lqw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lrl;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lsg;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lsg;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsg;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lsg;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsg;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lsg;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsg;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lsg;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lsg;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lsg;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsg;->b(Ljava/util/List;Z)V

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
    .line 39
    new-instance v0, Lra;

    new-instance v1, Lsg$1;

    invoke-direct {v1, p0, p1}, Lsg$1;-><init>(Lsg;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-direct {v0, v1}, Lra;-><init>(Lqs$a;)V

    invoke-virtual {v0}, Lra;->execute()V

    .line 107
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
