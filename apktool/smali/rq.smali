.class public final Lrq;
.super Lrl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq$2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lrl;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic a(Lrq;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lrq;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 13
    .param p1    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 25
    iget-boolean v2, p1, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    .line 27
    if-nez v2, :cond_0

    invoke-static {}, Lakr;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-static {}, Lakr;->ax()Z

    move-result v0

    if-nez v0, :cond_2

    .line 29
    :cond_1
    invoke-super {p0, v12, v5}, Lrl;->a(Ljava/util/List;Z)V

    .line 57
    :goto_0
    return-void

    .line 33
    :cond_2
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;

    sget-object v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->YES_NO_DONTASK_DIALOG:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v4, v0}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    iget-object v0, p1, Lcom/snapchat/android/model/CashTransaction;->mCurrencyCode:Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    sget-object v7, Lcom/snapchat/android/util/CashUtils$1;->$SwitchMap$com$snapchat$android$util$CashUtils$CurrencyCode:[I

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->ordinal()I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    rem-int/lit8 v0, v6, 0x64

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_1
    int-to-double v8, v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9, v7, v0}, Lauy;->a(DLjava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const v0, 0x7f0c0214

    invoke-static {v12, v0, v5}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessage:Ljava/lang/String;

    const v0, 0x7f0c0215

    iput v0, v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    new-instance v0, Lrq$1;

    invoke-direct {v0, p0, v2}, Lrq$1;-><init>(Lrq;Z)V

    iput-object v0, v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mYesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    invoke-virtual {v4}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
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
    .line 62
    invoke-super {p0, p1, p2}, Lrl;->a(Ljava/util/List;Z)V

    .line 63
    return-void
.end method

.method public final c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SEND_CONFIRMATION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
