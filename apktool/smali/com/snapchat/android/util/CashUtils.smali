.class public final Lcom/snapchat/android/util/CashUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/CashUtils$1;,
        Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CashUtils"


# direct methods
.method public static a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 10
    .param p0    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    if-eqz p2, :cond_12

    .line 111
    iget-object v4, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 112
    if-eqz p1, :cond_11

    .line 114
    iget-object v1, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iget-object v5, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v1, v5}, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_e

    move-object p1, v0

    .line 167
    :cond_0
    :goto_1
    return-object p1

    .line 114
    :cond_1
    iget-object v1, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    iget-object v5, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    iget-boolean v6, v1, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    if-eq v5, v6, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v5, v5, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iget-object v6, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v5, v6}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v5, v5, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    iget v6, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientSaveVersion:I

    if-ne v5, v6, :cond_5

    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    iget-boolean v6, v1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    if-eq v5, v6, :cond_6

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    iget-boolean v6, v1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    if-eq v5, v6, :cond_7

    move v1, v2

    goto :goto_0

    :cond_7
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v5, v5, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    iget v6, v1, Lcom/snapchat/android/model/CashTransaction;->mSenderSaveVersion:I

    if-ne v5, v6, :cond_8

    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    iget-boolean v6, v1, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    if-eq v5, v6, :cond_9

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    iget-boolean v6, v1, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    if-eq v5, v6, :cond_a

    move v1, v2

    goto :goto_0

    :cond_a
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v6, v5, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    iget-wide v8, v1, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-wide v6, v5, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    iget-wide v8, v1, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v5, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v5, v5, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    iget-boolean v1, v1, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    if-eq v5, v1, :cond_d

    move v1, v2

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto/16 :goto_0

    .line 117
    :cond_e
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 118
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 119
    iget-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iget-object v2, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 122
    invoke-static {p1}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 123
    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;)V

    .line 135
    :goto_2
    iget-object v1, p2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 136
    iget-boolean v1, v4, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    iput-boolean v1, v0, Lcom/snapchat/android/model/CashTransaction;->mIsInFlight:Z

    .line 137
    iget-boolean v1, v4, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    iput-boolean v1, v0, Lcom/snapchat/android/model/CashTransaction;->mIsFromServer:Z

    .line 138
    iget-wide v2, v4, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mCreatedTimestamp:J

    .line 139
    iget-wide v2, v4, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/CashTransaction;->mUpdatedTimestamp:J

    .line 141
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    goto/16 :goto_1

    .line 125
    :cond_f
    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_2

    .line 130
    :cond_10
    iget-object v1, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    .line 132
    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 133
    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/CashTransaction;->b(Lcom/snapchat/android/model/CashTransaction;)V

    goto :goto_2

    .line 147
    :cond_11
    invoke-virtual {p0, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    move-object p1, p2

    .line 148
    goto/16 :goto_1

    .line 154
    :cond_12
    if-eqz p1, :cond_14

    .line 155
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 156
    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 157
    iget-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v4, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/CashTransaction;->a(Lcom/snapchat/android/model/CashTransaction$TransactionStatus;)V

    :cond_13
    iput-boolean v2, v0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedByRecipient:Z

    iput-boolean v3, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedByRecipient:Z

    iput-boolean v2, v0, Lcom/snapchat/android/model/CashTransaction;->mIsViewedBySender:Z

    iput-boolean v3, v0, Lcom/snapchat/android/model/CashTransaction;->mIsSavedBySender:Z

    goto/16 :goto_1

    :cond_14
    move-object p1, v0

    .line 167
    goto/16 :goto_1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 67
    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    .line 68
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p0, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->UNDER_AGE_LIMIT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->LOCKED_ACCOUNT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-static {}, Lakr;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->r()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Lcom/snapchat/android/model/chat/CashFeedItem;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v1, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v1, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    .line 91
    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
