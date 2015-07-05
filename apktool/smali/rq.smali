.class public final Lrq;
.super Lqv;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQPhoneNumberBlocker"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lqv;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lrq;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lrq;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrq;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrq;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrq;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrq;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrq;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrq;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrq;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lrq;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lrq;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 39
    const-string v0, "SQPhoneNumberBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQPhoneNumberBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lqk;

    new-instance v1, Lrq$1;

    invoke-direct {v1, p0, p1}, Lrq$1;-><init>(Lrq;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-direct {v0, v1}, Lqk;-><init>(Lqc$a;)V

    invoke-virtual {v0}, Lqk;->f()V

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
