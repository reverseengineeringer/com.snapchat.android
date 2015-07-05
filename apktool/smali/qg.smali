.class public final Lqg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqg$1;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(I[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)V
    .locals 7
    .param p0    # Lcom/snapchat/android/model/CashTransaction;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 25
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    .line 27
    sget-object v2, Lqg$1;->$SwitchMap$com$snapchat$android$api2$cash$ScCashResponsePayload$Status:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 52
    :goto_0
    const v2, 0x7f0c01a7

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 64
    :goto_1
    return-void

    .line 29
    :pswitch_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v2, 0x7f0c0090

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    const v2, 0x7f0c008f

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessageResId:I

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 35
    :pswitch_1
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v2, 0x7f0c02d0

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    const v2, 0x7f0c02cf

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessageResId:I

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :pswitch_2
    const v2, 0x7f0c01a9

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    :pswitch_3
    const v2, 0x7f0c01a4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :pswitch_4
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v5, 0x7f0c0182

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
