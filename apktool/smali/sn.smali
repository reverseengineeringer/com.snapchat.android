.class public final Lsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsn$5;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final CLIENT_IDENTITY:Ljava/lang/String; = "chartreuse"

.field public static final CLIENT_PARAM:Ljava/lang/String; = "client"

.field public static final NAME:Ljava/lang/String; = "SQUARE"

.field private static final TAG:Ljava/lang/String; = "SquareProvider"


# instance fields
.field protected mCashErrorReporter:Lqg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lsn;)V

    .line 63
    return-void
.end method

.method public static a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)Lcom/snapchat/android/model/CashTransaction$TransactionStatus;
    .locals 1
    .param p0    # Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_0

    .line 234
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 252
    :goto_0
    return-object v0

    .line 235
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_4

    .line 236
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->EXPIRED_WAITING_ON_RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_1

    .line 237
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->EXPIRED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->RECIPIENT_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_2

    .line 239
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->RECIPIENT_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 240
    :cond_2
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->SQUARE_CANCELED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;

    if-ne p1, v0, :cond_3

    .line 241
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 246
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->SENDER_CANCELED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 248
    :cond_4
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;->COMPLETED:Lcom/snapchat/android/api2/cash/square/data/CashPayment$State;

    if-ne p0, v0, :cond_5

    .line 249
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0

    .line 252
    :cond_5
    sget-object v0, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    goto :goto_0
.end method

.method public static a(Lqv;I)Ljava/util/List;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqv;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    sparse-switch p1, :sswitch_data_0

    .line 196
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 189
    :sswitch_0
    new-array v0, v2, [Lqv;

    new-instance v1, Lrf;

    invoke-direct {v1, v2}, Lrf;-><init>(Z)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 191
    :sswitch_1
    instance-of v0, p0, Lrn;

    if-eqz v0, :cond_0

    .line 192
    new-array v0, v2, [Lqv;

    new-instance v1, Lrl;

    invoke-direct {v1}, Lrl;-><init>()V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x199 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;)V
    .locals 4

    .prologue
    const v3, 0x7f0c01a7

    const/4 v2, 0x0

    .line 201
    if-eqz p0, :cond_0

    .line 202
    sget-object v0, Lsn$5;->$SwitchMap$com$snapchat$android$api2$cash$square$data$CashPayment$CancellationReason:[I

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$CancellationReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    const-string v0, "OTHER"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 220
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lqg;->a(I[Ljava/lang/Object;)V

    .line 227
    :goto_0
    return-void

    .line 204
    :pswitch_0
    const-string v0, "CARD_DECLINED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 205
    const v0, 0x7f0c01a5

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqg;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 208
    :pswitch_1
    const-string v0, "LIMIT_EXCEEDED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->ONE_BUTTON:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V

    const v2, 0x7f0c01a3

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    const v2, 0x7f0c01a8

    iput v2, v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessageResId:I

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :pswitch_2
    const-string v0, "SQUARE_CANCELED"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 215
    const v0, 0x7f0c01ab

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lqg;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 225
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, v0}, Lqg;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lajx;->ak()V

    .line 158
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    .line 159
    new-instance v1, Lsn$2;

    invoke-direct {v1, p0}, Lsn$2;-><init>(Lsn;)V

    iput-object v1, v0, Lqv;->mListener:Lqv$a;

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 183
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must have verified phone number before calling SquareProvider#getAccessToken!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mBlockerPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 148
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    invoke-static {v0}, Latv;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 149
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    new-instance v1, Lsn$4;

    invoke-direct {v1, p0, v0}, Lsn$4;-><init>(Lsn;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lqd$a;)V

    .line 150
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lrf;

    invoke-direct {v0}, Lrf;-><init>()V

    .line 108
    new-instance v1, Lsn$1;

    invoke-direct {v1, p0, p1}, Lsn$1;-><init>(Lsn;Ljava/lang/String;)V

    iput-object v1, v0, Lqv;->mListener:Lqv$a;

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqv;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 136
    return-void
.end method

.method public final b()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lqx;

    invoke-direct {v2}, Lqx;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lrh;

    invoke-direct {v2}, Lrh;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lrf;

    invoke-direct {v2}, Lrf;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lajx;->aw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Lrp;

    invoke-direct {v1}, Lrp;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lrn;

    invoke-direct {v2}, Lrn;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lrf;

    invoke-direct {v2}, Lrf;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lrt;

    invoke-direct {v2}, Lrt;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lqx;

    invoke-direct {v2}, Lqx;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lrf;

    invoke-direct {v2}, Lrf;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lrs;

    invoke-direct {v2}, Lrs;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lqv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Lqv;

    const/4 v1, 0x0

    new-instance v2, Lrx;

    invoke-direct {v2}, Lrx;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
