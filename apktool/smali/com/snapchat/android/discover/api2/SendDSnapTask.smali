.class public final Lcom/snapchat/android/discover/api2/SendDSnapTask;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/api2/SendDSnapTask$b;,
        Lcom/snapchat/android/discover/api2/SendDSnapTask$a;,
        Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;,
        Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltw;",
        "Lui$b",
        "<",
        "Lcom/snapchat/android/discover/api2/SendDSnapTask$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final SHARE_PATH:Ljava/lang/String; = "/loq/conversation_share_media"

.field private static final TAG:Ljava/lang/String; = "SendDSnapTask"


# instance fields
.field private final mChatConversationManager:Lakx;

.field private final mContext:Landroid/content/Context;

.field private final mDSnapMailingMetadata:Lakg;

.field private final mDSnapSharingExtras:Laeb;

.field private final mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

.field private final mSeqNumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapbryo:Laji;

.field private final mUser:Lakp;


# direct methods
.method public constructor <init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laji;",
            "Lcom/snapchat/android/discover/api2/SendDSnapTask$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ltw;-><init>()V

    .line 85
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mUser:Lakp;

    .line 87
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    .line 88
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v0, Laeb;

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapSharingExtras:Laeb;

    .line 89
    iput-object p1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    .line 90
    iput-object p2, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    .line 91
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 92
    iput-object p3, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSeqNumsMap:Ljava/util/HashMap;

    .line 93
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mChatConversationManager:Lakx;

    .line 94
    const-class v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laji;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    return-object v0
.end method

.method static synthetic a([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p0, v0

    invoke-static {v4}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-boolean v6, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    if-eqz v6, :cond_0

    iput-boolean v1, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    :cond_0
    iget-wide v6, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    invoke-virtual {v0}, Lakg;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 252
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    invoke-virtual {v1}, Lakg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mChatConversationManager:Lakx;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lakx;->b(Ljava/lang/String;Z)V

    .line 259
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laeb;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapSharingExtras:Laeb;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lakr;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask$c;->d(Laji;)V

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Lakg;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSeqNumsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/api2/SendDSnapTask;)Laum;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mGsonWrapper:Laum;

    return-object v0
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "/loq/conversation_share_media"

    return-object v0
.end method

.method public final getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask$a;-><init>(Lcom/snapchat/android/discover/api2/SendDSnapTask;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 46
    check-cast p1, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mUser:Lakp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mUser:Lakp;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->DISCOVER_SHARE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v4

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_SEND_DSNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v5, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    :cond_0
    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;->mDSnapPostResult:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    iget-object v5, p1, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;->mDSnapPostResult:Ljava/util/HashMap;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v9, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mGsonWrapper:Laum;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v10, Lcom/snapchat/android/discover/api2/SendDSnapTask$1;

    invoke-direct {v10, p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask$1;-><init>(Lcom/snapchat/android/discover/api2/SendDSnapTask;)V

    invoke-virtual {v10}, Lcom/snapchat/android/discover/api2/SendDSnapTask$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Laum;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    sget-object v9, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->SUCCESS:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    if-eq v1, v9, :cond_2

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_2
    sget-object v9, Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;->FAILED_NOT_A_FRIEND:Lcom/snapchat/android/discover/api2/SendDSnapTask$DSnapSendStatus;

    if-ne v1, v9, :cond_1

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask$c;->c(Laji;)V

    invoke-direct {p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a()V

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    invoke-static {v4}, Lakr;->o(Z)V

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;->mConversations:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mChatConversationManager:Lakx;

    iget-object v1, p1, Lcom/snapchat/android/discover/api2/SendDSnapTask$b;->mConversations:Ljava/util/List;

    invoke-virtual {v0, v1, v4, v4}, Lakx;->a(Ljava/util/List;ZZ)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DSnap send failed with post result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and sequence numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSeqNumsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mContext:Landroid/content/Context;

    const-string v2, ","

    invoke-static {v7, v2}, Lavz;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->a()V

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    invoke-virtual {v0, v6}, Lakg;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->b()V

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mChatConversationManager:Lakx;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    invoke-virtual {v1}, Lakg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakx;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    instance-of v2, v0, Lalc;

    if-eqz v2, :cond_9

    check-cast v0, Lalc;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    goto :goto_1

    :cond_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mChatConversationManager:Lakx;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mDSnapMailingMetadata:Lakg;

    invoke-virtual {v1}, Lakg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakx;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_9
    new-instance v0, Lalc;

    iget-object v2, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    invoke-direct {v0, v2}, Lalc;-><init>(Laji;)V

    sget-object v2, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v2, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto/16 :goto_1

    :cond_a
    iget v0, p2, Lus;->mResponseCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_b

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask$c;->e(Laji;)V

    new-instance v0, Lacw;

    iget-object v1, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSnapbryo:Laji;

    iget-object v2, p0, Lcom/snapchat/android/discover/api2/SendDSnapTask;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    invoke-direct {v0, v1, v2}, Lacw;-><init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;)V

    invoke-virtual {v0}, Lacw;->execute()V
    :try_end_0
    .catch Lacw$b; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lacw$b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->b()V

    goto/16 :goto_2

    :cond_c
    move-object v1, v0

    goto :goto_3
.end method
