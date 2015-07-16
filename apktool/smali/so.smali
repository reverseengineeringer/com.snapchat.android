.class public final Lso;
.super Lrl;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQUrlBlocker"


# instance fields
.field private final mUrl:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Lrl;-><init>()V

    .line 19
    iput-object p1, p0, Lso;->mUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic a(Lso;)V
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lso;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lso;)V
    .locals 0

    .prologue
    .line 12
    invoke-virtual {p0}, Lso;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;-><init>()V

    .line 32
    iget-object v1, p0, Lso;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lso$1;

    invoke-direct {v1, p0}, Lso$1;-><init>(Lso;)V

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->e:Z

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->d:Z

    iput-object v1, v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a:Lcom/snapchat/android/fragments/verification/URLVerificationFragment$a;

    .line 43
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_URL_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    invoke-super {p0, p1}, Lrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lrl;->hashCode()I

    move-result v0

    return v0
.end method
