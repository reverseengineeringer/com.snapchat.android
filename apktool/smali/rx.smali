.class public final Lrx;
.super Lrl;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SQCardFormBlocker"


# instance fields
.field mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation build Lchc;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_status"
    .end annotation
.end field

.field protected mCashCardManager:Lyn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetriedFrom401:Z

.field protected mSquareProvider:Ltd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTransactionContext:Lcom/snapchat/android/model/CashTransaction;
    .annotation build Lchd;
    .end annotation
.end field

.field private mUseDefaultGreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lrl;-><init>()V

    .line 46
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    iput-object v0, p0, Lrx;->mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx;->mUseDefaultGreen:Z

    .line 54
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lrx;)V

    .line 55
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lrx;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx;->mUseDefaultGreen:Z

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 2

    .prologue
    .line 34
    if-eqz p0, :cond_0

    sget-object v0, Lrx$2;->$SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType:[I

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lrx;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lrx;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;Z)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lrm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 103
    new-instance v7, Lrv;

    invoke-direct {v7, p6}, Lrv;-><init>(Z)V

    .line 105
    new-instance v0, Lrx$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lrx$1;-><init>(Lrx;Lrm;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lrl;->mListener:Lrl$a;

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lrl;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 207
    return-void
.end method

.method static synthetic a(Lrx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;)V
    .locals 7

    .prologue
    .line 34
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lrx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;Z)V

    return-void
.end method

.method static synthetic a(Lrx;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrx;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lrx;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lrx;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lrx;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lrx;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method static synthetic c(Lrx;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lrx;->mRetriedFrom401:Z

    return v0
.end method

.method static synthetic d(Lrx;)Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx;->mRetriedFrom401:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 64
    iput-object p1, p0, Lrx;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    .line 66
    iget-object v0, p0, Lrx;->mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lrx;->mCashCardManager:Lyn;

    invoke-virtual {v0}, Lyn;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx;->a(Ljava/util/List;Z)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v2, "use_default_green"

    iget-boolean v3, p0, Lrx;->mUseDefaultGreen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    iput-object p0, v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Lcom/snapchat/android/fragments/cash/CardLinkFragment$a;

    .line 80
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbev;

    invoke-direct {v2, v0}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lrm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 94
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lrx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrm;Z)V

    .line 95
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 211
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->R()V

    .line 213
    invoke-virtual {p0}, Lrx;->a()V

    .line 214
    return-void
.end method
