.class public final Lavj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lavj$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerChatConversationUtils"


# direct methods
.method public static a(Lbid;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p0}, Lbid;->a()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 51
    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 58
    :goto_2
    new-instance v2, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {v2, v1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0, v2, p0, v3, v3}, Lakx;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbid;ZZ)V

    .line 67
    iget-boolean v0, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_2

    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 70
    new-instance v0, Lzf;

    invoke-direct {v0}, Lzf;-><init>()V

    sget-object v1, Lbju$a;->DELETE:Lbju$a;

    invoke-virtual {v0, v2, v1}, Lzf;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lbju$a;)V

    :cond_2
    move-object v0, v2

    .line 72
    goto :goto_0

    .line 51
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbih;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbih;

    .line 79
    invoke-virtual {v0}, Lbih;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v0}, Lbih;->c()Lbif;

    move-result-object v5

    .line 83
    invoke-virtual {v5}, Lbif;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    sget-object v1, Lavj$1;->$SwitchMap$com$snapchat$soju$android$MessageBody$Type:[I

    invoke-virtual {v5}, Lbif;->a()Lbjj;

    move-result-object v6

    invoke-virtual {v6}, Lbjj;->d()Lbjj$a;

    move-result-object v6

    invoke-virtual {v6}, Lbjj$a;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 116
    new-instance v1, Lale;

    invoke-direct {v1, v5}, Lale;-><init>(Lbif;)V

    .line 124
    :goto_1
    invoke-virtual {v0}, Lbih;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lakw;->d(Ljava/lang/String;)V

    .line 125
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :pswitch_0
    new-instance v1, Lald;

    invoke-direct {v1, v5}, Lald;-><init>(Lbif;)V

    goto :goto_1

    .line 91
    :pswitch_1
    new-instance v1, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {v1, v5}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lbif;)V

    goto :goto_1

    .line 96
    :pswitch_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->k()Z

    .line 97
    new-instance v1, Lalc;

    invoke-direct {v1, v5}, Lalc;-><init>(Lbif;)V

    goto :goto_1

    .line 99
    :pswitch_3
    new-instance v1, Lalb;

    invoke-direct {v1, v5}, Lalb;-><init>(Lbif;)V

    goto :goto_1

    .line 111
    :pswitch_4
    new-instance v1, Lalb;

    invoke-direct {v1, v5}, Lalb;-><init>(Lbif;)V

    goto :goto_1

    .line 121
    :cond_1
    new-instance v1, Lale;

    invoke-direct {v1, v5}, Lale;-><init>(Lbif;)V

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v0}, Lbih;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {v0}, Lbih;->a()Lbiy;

    move-result-object v0

    invoke-static {v0}, Lavr;->a(Lbiy;)Lcom/snapchat/android/model/Snap;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Lbih;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v0}, Lbih;->e()Lbic;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/model/CashTransaction$a;->a(Lbic;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    .line 130
    iget-object v5, v1, Lcom/snapchat/android/model/CashTransaction;->mRecipientUsername:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v6, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->INITIATED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-eq v5, v6, :cond_0

    .line 133
    :cond_4
    new-instance v5, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {v5, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;-><init>(Lcom/snapchat/android/model/CashTransaction;)V

    .line 136
    invoke-virtual {v0}, Lbih;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/snapchat/android/model/chat/CashFeedItem;->mIterToken:Ljava/lang/String;

    .line 137
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 140
    :cond_5
    return-object v2

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
