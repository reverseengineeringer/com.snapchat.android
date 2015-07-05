.class public final Lcom/snapchat/android/model/chat/ChatConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laio;
.implements Ljava/lang/Comparable;
.implements Lut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laio;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;",
        "Lut;"
    }
.end annotation


# static fields
.field public static final CHAT_ID_DELIMITER:Ljava/lang/String; = "~"

.field private static final RECIPIENT_PRESENCE_TIME_INTERVAL:I = 0x3e80

.field private static final SENDER_PRESENCE_TIME_INTERVAL:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "ChatConversation"

.field private static final TIME_BEFORE_DELETING_FAILED_CHATS_IN_MILLISECONDS:I = 0x36ee80


# instance fields
.field public mAmIPresent:Z

.field private mAmITyping:Z

.field public mBeingCleared:Z

.field public final mChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mChatsIterToken:Ljava/lang/String;

.field public mChatsSorted:Z

.field public mClearedChatIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEnteredConversationFromRecentStoryReply:Z

.field public mFailedChatMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbhf;",
            ">;"
        }
    .end annotation
.end field

.field public mFailedReleaseMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbit;",
            ">;"
        }
    .end annotation
.end field

.field public mFailedSnaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Laji;",
            ">;"
        }
    .end annotation
.end field

.field public mGsonWrapper:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mHasUnreleasedReceivedChats:Z

.field public mHasUnviewedCash:Z

.field public mHasUnviewedReceivedSnaps:Z

.field public mHasUnviewedSnapsWithAudio:Z

.field public mHereAuth:Lbic;

.field public final mId:Ljava/lang/String;

.field public mIsDisplayingVideo:Z

.field public mIsNotifyingRecipientAboutTyping:Z

.field public mIsRecipientPresent:Z

.field public mIsSavableConversation:Z

.field public mIsStub:Z

.field public mIsUserInConversation:Z

.field public mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field public mItemsForFeedIcon:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mIterToken:Ljava/lang/String;

.field public mLastCashFromServer:Lcom/snapchat/android/model/chat/CashFeedItem;

.field public mLastChatFromServer:Lakb;

.field public mLastSCCPMessageSentTimestamp:J

.field public mLastSeqNumOfMyChatIDeleted:J

.field public mLastSeqNumOfMyChatTheyReleased:J

.field public mLastSeqNumOfTheirChatIDeleted:J

.field public mLastSeqNumOfTheirChatIDisplayed:J

.field public mLastSeqNumOfTheirChatIReleased:J

.field public mLastSnapFromServer:Lcom/snapchat/android/model/Snap;

.field public mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

.field public mLastTimestampOfReceivedSnapReadReceiptIReleased:J

.field public mLastTimestampOfSentSnapReadReceiptIDeleted:J

.field public mLastTimestampOfSentSnapReadReceiptIReleased:J

.field mMediaImageCache:Lawp;

.field public mMessagingAuthToken:Lbix;

.field public mMyLastAckedSeqNum:J

.field public mMyLastConnSeqNum:J

.field public mMyLastSeqNum:J

.field public mMyUsername:Ljava/lang/String;

.field public mNumSCCPChatMessagesSendingOrSent:I

.field public mPendingRainBills:I

.field public mPendingRainTransactionTimestamp:J

.field public mPendingReceivedChats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakb;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecipientPresenceHandler:Landroid/os/Handler;

.field private final mRecipientPresenceRunnable:Ljava/lang/Runnable;

.field public mRecipientSupportsHere:Z

.field private mSecondsLeftInUnviewedSnaps:I

.field private final mSenderPresenceHandler:Landroid/os/Handler;

.field private final mSenderPresenceRunnable:Ljava/lang/Runnable;

.field public mSendingCashManager:Lya;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSendingChatFeedItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSendingMessages:Ljava/util/Set;
    .annotation runtime Lbwo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbhl;",
            ">;"
        }
    .end annotation
.end field

.field public mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field public mSlightlySecurePreferences:Layg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mTheirLastConnSeqNum:J

.field public mTheirLastSeqNum:J

.field public mTheirUsername:Ljava/lang/String;

.field public mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-static {p1, p2}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Lawp;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    .line 129
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 133
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    .line 139
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 145
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 187
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 189
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    .line 195
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    .line 202
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$2;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    .line 214
    new-instance v0, Layh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Layj;->PER_CONVERSATION_AUTH:Layh;

    iget-object v2, v2, Layh;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Layj;->PER_CONVERSATION_AUTH:Layh;

    iget-object v2, v2, Layh;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 217
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v1, v0}, Layg;->a(Layh;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Lato;

    const-class v2, Lbix;

    invoke-virtual {v1, v0, v2}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbix;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    .line 222
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput-boolean p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatConversation;)Lbic;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbic;

    return-object v0
.end method

.method private b(ILaje;)Ljava/util/List;
    .locals 9
    .param p2    # Laje;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laje;",
            ")",
            "Ljava/util/List",
            "<",
            "Laje;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1431
    if-nez p2, :cond_1

    move v1, v3

    .line 1432
    :goto_0
    iget-object v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v6

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 1435
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v1

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1436
    if-nez v5, :cond_2

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Laje;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v3

    .line 1438
    goto :goto_1

    .line 1431
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1440
    :cond_2
    instance-of v2, v1, Laje;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->z()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1441
    check-cast v1, Laje;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v6

    move-object v1, v4

    .line 1447
    :goto_2
    return-object v1

    .line 1445
    :cond_3
    monitor-exit v6

    move-object v1, v4

    .line 1447
    goto :goto_2

    .line 1445
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1490
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    .line 1493
    :goto_0
    return v0

    .line 1492
    :cond_1
    monitor-exit v1

    .line 1493
    const/4 v0, 0x0

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Z
    .locals 4

    .prologue
    .line 1501
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1502
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1503
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    .line 1506
    :goto_0
    return v0

    .line 1505
    :cond_2
    monitor-exit v1

    .line 1506
    const/4 v0, 0x0

    goto :goto_0

    .line 1505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final C_()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->CONVERSATION:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    return-object v0
.end method

.method public final D()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1623
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-nez v1, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final E()Ljava/util/List;
    .locals 7
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1688
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1689
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_0

    .line 1690
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1691
    iget-object v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 1692
    iget-object v5, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v5, v6, :cond_0

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v5, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v4, v5, :cond_0

    .line 1694
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1698
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1699
    return-object v1
.end method

.method public final a(ILaje;)I
    .locals 3
    .param p2    # Laje;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1396
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public final a(ILaje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 5
    .param p2    # Laje;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1412
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(ILaje;)Ljava/util/List;

    move-result-object v1

    .line 1413
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1426
    :goto_0
    return v0

    .line 1416
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    .line 1417
    invoke-virtual {v0}, Laje;->L()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1418
    add-int/lit8 v1, v1, 0x1

    .line 1419
    invoke-virtual {v0}, Laje;->R()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1420
    new-instance v3, Lop;

    sget-object v4, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v3, v0, p3, p4, v4}, Lop;-><init>(Laje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljavax/inject/Provider;)V

    invoke-virtual {v3}, Lop;->a()V

    :cond_1
    move v0, v1

    move v1, v0

    .line 1424
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1426
    goto :goto_0
.end method

.method public final a(J)J
    .locals 5

    .prologue
    .line 412
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 413
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 419
    :goto_0
    return-wide p1

    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    const-wide/16 v2, 0x1

    add-long p1, v0, v2

    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public final a(JZ)V
    .locals 5

    .prologue
    .line 1252
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1253
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    .line 1256
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-eqz p3, :cond_1

    .line 1257
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 1260
    :cond_1
    return-void
.end method

.method public final a(Laje;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 245
    return-void
.end method

.method public final a(Laji;)V
    .locals 6

    .prologue
    .line 508
    invoke-virtual {p1}, Laji;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 510
    const-string v0, "ChatConversation"

    const-string v1, "SNAP-LOG: setSendingSnapSuccessful updated conversation timestamp for %s to %d but did not call sortAndUpdateConversationsList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1}, Laji;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    check-cast v0, Laji;

    .line 513
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laji;->h()V

    .line 514
    :cond_0
    return-void
.end method

.method public final a(Lbhl;)V
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 391
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lbit;)V
    .locals 6

    .prologue
    .line 820
    invoke-virtual {p1}, Lbit;->a()Lbit$a;

    move-result-object v0

    sget-object v1, Lbit$a;->DELETE:Lbit$a;

    if-eq v0, v1, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    invoke-virtual {p1}, Lbit;->b()Ljava/util/Map;

    move-result-object v1

    .line 825
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 826
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 827
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 830
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 831
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    .line 833
    :cond_3
    invoke-virtual {p1}, Lbit;->c()Ljava/util/Map;

    move-result-object v1

    .line 834
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 835
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 836
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 839
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 840
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    goto :goto_0
.end method

.method public final a(Lbix;)V
    .locals 3
    .param p1    # Lbix;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 355
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    .line 356
    new-instance v1, Layh;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Layj;->PER_CONVERSATION_AUTH:Layh;

    iget-object v2, v2, Layh;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Layj;->PER_CONVERSATION_AUTH:Layh;

    iget-object v2, v2, Layh;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v1, v0, v2}, Layh;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v2, v1, v0}, Layg;->a(Layh;Ljava/lang/String;)V

    .line 362
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Lato;

    invoke-virtual {v0, p1}, Lato;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 6

    .prologue
    .line 475
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    .line 478
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_3

    .line 485
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v2, v2, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    if-eqz v2, :cond_3

    invoke-static {p1}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v2, v2, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    :cond_2
    invoke-static {p1}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    .line 487
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 3

    .prologue
    .line 743
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->c(J)V

    .line 744
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 745
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 746
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()V

    .line 747
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbaz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 748
    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1551
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1552
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1554
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;Ljava/util/List;Z)V
    .locals 5
    .param p1    # Ljava/util/HashMap;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/chat/CashFeedItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 848
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 849
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 850
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 852
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 853
    check-cast v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 854
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 856
    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_0

    .line 861
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 862
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/CashUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 870
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 873
    if-eqz p3, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_3

    .line 877
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 878
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 879
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    goto :goto_1

    .line 882
    :cond_2
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 885
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingCashManager:Lya;

    invoke-virtual {v0, p0, v3}, Lya;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 886
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 269
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 272
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 281
    return-void
.end method

.method public final a(Lbhf;)Z
    .locals 4

    .prologue
    .line 491
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 493
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbhf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    monitor-exit v1

    .line 498
    :goto_0
    return v0

    .line 497
    :cond_1
    monitor-exit v1

    .line 498
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 598
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 599
    if-nez v0, :cond_0

    move v0, v1

    .line 612
    :goto_0
    return v0

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v2, v0}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v2

    .line 603
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 607
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 608
    invoke-static {v0, p1}, Laui;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 612
    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 16

    .prologue
    .line 671
    const/4 v4, 0x0

    .line 673
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 674
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 675
    const/4 v2, 0x0

    .line 677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v11

    .line 679
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 681
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 683
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->al()Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    .line 687
    :goto_1
    instance-of v3, v2, Lako;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lako;

    move-object v3, v0

    invoke-interface {v3}, Lako;->f()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ao()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->N()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->q()Z

    move-result v3

    if-nez v3, :cond_5

    .line 690
    :cond_2
    const-string v13, "ChatConversation"

    const-string v14, "CHAT-LOG: NOT clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v3, 0x4

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v6, v15, v3

    const/4 v3, 0x2

    aput-object v5, v15, v3

    const/4 v5, 0x3

    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v15, v5

    invoke-static {v13, v14, v15}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    if-nez v8, :cond_b

    instance-of v3, v2, Lakn;

    if-eqz v3, :cond_b

    .line 695
    check-cast v2, Lakn;

    invoke-interface {v2}, Lakn;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 696
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 684
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_1

    .line 690
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 699
    :cond_5
    const-string v6, "ChatConversation"

    const-string v7, "CHAT-LOG: Clearing chat with id[%s] conv[%s] text[%s] seq_num[%d]"

    const/4 v3, 0x4

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v4, v13, v3

    const/4 v3, 0x2

    aput-object v5, v13, v3

    const/4 v14, 0x3

    instance-of v3, v2, Lakb;

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Lakb;

    move-object v3, v0

    invoke-virtual {v3}, Lakb;->s()J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-static {v6, v7, v13}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_8

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Lawp;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lawp;->c(Ljava/lang/String;)V

    .line 713
    :cond_6
    :goto_4
    const/4 v2, 0x1

    :goto_5
    move v4, v2

    .line 715
    goto/16 :goto_0

    .line 699
    :cond_7
    const-wide/16 v4, -0x1

    goto :goto_3

    .line 708
    :cond_8
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_9

    .line 709
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 720
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 710
    :cond_9
    :try_start_1
    instance-of v3, v2, Lakh;

    if-eqz v3, :cond_6

    .line 711
    sget-object v3, Lawq;->DISCOVER_SHARE:Lawp;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 717
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 719
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 720
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    return v4

    :cond_b
    move v2, v4

    goto :goto_5
.end method

.method public final b(J)J
    .locals 5

    .prologue
    .line 902
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    const-wide/16 v2, 0x1

    add-long p1, v0, v2

    :cond_0
    return-wide p1
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 504
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 777
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    .line 779
    if-eqz p1, :cond_1

    .line 783
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 784
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 789
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 791
    :cond_0
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    iget-boolean v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-virtual {v0, p0, v1, v2, v3}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    .line 792
    return-void

    .line 787
    :cond_1
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    goto :goto_0
.end method

.method public final c()Laje;
    .locals 1

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Laji;
    .locals 4

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1018
    instance-of v3, v0, Laji;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1019
    check-cast v0, Laji;

    monitor-exit v1

    .line 1023
    :goto_0
    return-object v0

    .line 1022
    :cond_1
    monitor-exit v1

    .line 1023
    const/4 v0, 0x0

    goto :goto_0

    .line 1022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 1263
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1264
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    .line 1266
    :cond_0
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 539
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbaz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 541
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 542
    return-void

    .line 539
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    .line 797
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->w()V

    .line 798
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 75
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v0, v1, v2, v3}, Lbfu;->a(JJ)I

    move-result v0

    return v0
.end method

.method public final d()Laje;
    .locals 5

    .prologue
    .line 336
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 340
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 341
    instance-of v2, v1, Laje;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->z()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    check-cast v0, Laje;

    move-object v2, v0

    invoke-virtual {v2}, Laje;->x()Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    check-cast v1, Laje;

    monitor-exit v3

    .line 347
    :goto_0
    return-object v1

    .line 346
    :cond_1
    monitor-exit v3

    .line 347
    const/4 v1, 0x0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1035
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1036
    monitor-exit v1

    .line 1040
    :goto_0
    return-object v0

    .line 1039
    :cond_1
    monitor-exit v1

    .line 1040
    const/4 v0, 0x0

    goto :goto_0

    .line 1039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 1453
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1051
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1052
    instance-of v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1053
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    monitor-exit v1

    .line 1057
    :goto_0
    return-object v0

    .line 1056
    :cond_1
    monitor-exit v1

    .line 1057
    const/4 v0, 0x0

    goto :goto_0

    .line 1056
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 1633
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    if-eq v0, p1, :cond_0

    .line 1634
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    .line 1636
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    if-nez v0, :cond_0

    .line 1637
    new-instance v0, Lte;

    invoke-direct {v0, p0}, Lte;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0}, Lte;->f()V

    .line 1640
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1363
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Lakb;
    .locals 4

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1068
    instance-of v3, v0, Lakb;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1069
    check-cast v0, Lakb;

    monitor-exit v1

    .line 1073
    :goto_0
    return-object v0

    .line 1072
    :cond_1
    monitor-exit v1

    .line 1073
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Lakb;
    .locals 4

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1084
    instance-of v3, v0, Lakb;

    if-eqz v3, :cond_0

    .line 1085
    check-cast v0, Lakb;

    .line 1086
    invoke-virtual {v0}, Lakb;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1087
    monitor-exit v1

    .line 1092
    :goto_0
    return-object v0

    .line 1091
    :cond_1
    monitor-exit v1

    .line 1092
    const/4 v0, 0x0

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 1386
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laje;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 1562
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    return v0
.end method

.method public final h(Ljava/lang/String;)Lbhl;
    .locals 4

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhl;

    .line 1104
    invoke-virtual {v0}, Lbhl;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1105
    monitor-exit v1

    .line 1109
    :goto_0
    return-object v0

    .line 1108
    :cond_1
    monitor-exit v1

    .line 1109
    const/4 v0, 0x0

    goto :goto_0

    .line 1108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Laji;
    .locals 5

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1118
    :try_start_0
    invoke-static {p1}, Laut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1120
    instance-of v4, v0, Laji;

    if-eqz v4, :cond_0

    .line 1121
    check-cast v0, Laji;

    .line 1122
    invoke-virtual {v0}, Laji;->ag()Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-static {v4}, Laut;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1124
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1125
    monitor-exit v1

    .line 1130
    :goto_0
    return-object v0

    .line 1129
    :cond_1
    monitor-exit v1

    .line 1130
    const/4 v0, 0x0

    goto :goto_0

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 287
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Laje;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 308
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 309
    const/4 v4, 0x0

    .line 310
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 311
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    .line 312
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v5

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 316
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 317
    instance-of v3, v2, Laje;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Laje;

    move-object v3, v0

    invoke-virtual {v3}, Laje;->z()Z

    move-result v3

    if-nez v3, :cond_3

    .line 318
    check-cast v2, Laje;

    .line 319
    if-nez v4, :cond_1

    move-object v3, v2

    .line 325
    :goto_1
    invoke-virtual {v2}, Laje;->aj()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 328
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    move-object v2, v3

    :goto_2
    move-object v4, v2

    .line 330
    goto :goto_0

    .line 322
    :cond_1
    iget v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    int-to-double v8, v3

    invoke-virtual {v2}, Laje;->F()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    move-object v3, v4

    goto :goto_1

    .line 331
    :cond_2
    monitor-exit v5

    .line 332
    return-object v4

    .line 331
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    move-object v2, v4

    goto :goto_2
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1528
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1529
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Sending. Adding [%s] to sending ID list"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1531
    const-string v0, "ChatConversation"

    const-string v1, "SNAP-LOG: updateWithNewSendingMessage updated conversation timestamp for %s to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1533
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->f()V

    .line 1534
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1535
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    .line 371
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1539
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Sent. Removing [%s] from sending ID list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1540
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1541
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    .line 380
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1544
    const-string v0, "ChatConversation"

    const-string v1, "Message marked as Failed. Removing [%s] from sending ID list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1545
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1546
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1547
    return-void
.end method

.method public final m()I
    .locals 5

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 438
    instance-of v4, v0, Laje;

    if-eqz v4, :cond_1

    check-cast v0, Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 441
    goto :goto_0

    .line 442
    :cond_0
    monitor-exit v2

    .line 443
    return v1

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final n()Laje;
    .locals 5

    .prologue
    .line 447
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 451
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 452
    instance-of v2, v1, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/Snap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->ap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    check-cast v1, Laje;

    monitor-exit v3

    .line 457
    :goto_0
    return-object v1

    .line 456
    :cond_1
    monitor-exit v3

    .line 457
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 550
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    return-object v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 557
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 562
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 574
    monitor-exit v1

    .line 576
    return-object v0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final r()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 631
    .line 632
    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v2, :cond_1

    .line 633
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 634
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    move v0, v1

    .line 638
    :cond_1
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 639
    :cond_2
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 641
    :cond_3
    return-void
.end method

.method public final s()V
    .locals 5

    .prologue
    .line 647
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 649
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 650
    instance-of v4, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v4, :cond_1

    instance-of v4, v0, Laji;

    if-eqz v4, :cond_2

    .line 651
    :cond_1
    sget-object v0, Lawq;->CHAT_MEDIA_IMAGE_CACHE:Lawp;

    invoke-virtual {v0, v3}, Lawp;->c(Ljava/lang/String;)V

    .line 652
    sget-object v0, Lawq;->DSNAP_MEDIA_CACHE:Lawp;

    invoke-virtual {v0, v3}, Lawp;->c(Ljava/lang/String;)V

    .line 653
    sget-object v0, Lawq;->UNENCRYPTED_VIDEO_CACHE:Lawp;

    invoke-virtual {v0, v3}, Lawp;->c(Ljava/lang/String;)V

    .line 654
    sget-object v0, Lawq;->DISCOVER_SHARE:Lawp;

    invoke-virtual {v0, v3}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 655
    :cond_2
    :try_start_1
    instance-of v3, v0, Laje;

    if-eqz v3, :cond_0

    .line 656
    check-cast v0, Laje;

    .line 657
    sget-object v3, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {v0}, Laje;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lawp;->c(Ljava/lang/String;)V

    .line 658
    sget-object v3, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {v0}, Laje;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lawp;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final t()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x36ee80

    .line 906
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 907
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 908
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 909
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhf;

    .line 911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lbhf;->f()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    .line 913
    invoke-virtual {v2}, Lbhf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakb;

    move-result-object v2

    .line 914
    if-eqz v2, :cond_1

    .line 915
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 917
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 938
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 921
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 922
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 923
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 924
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 925
    instance-of v2, v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v2, :cond_3

    .line 926
    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v2, v0

    .line 927
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->O()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v3, v8, v12

    if-ltz v3, :cond_3

    .line 931
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 937
    :cond_4
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 938
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final u()V
    .locals 8

    .prologue
    .line 998
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1003
    const-string v0, "ChatConversation"

    const-string v2, "SNAP-LOG: updateTimestampAndSortConversations updated conversation timestamp for %s to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->f()V

    .line 1008
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    invoke-direct {v1}, Lben;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1009
    return-void

    .line 1006
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1154
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1156
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    monitor-exit v2

    move v0, v1

    .line 1162
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 1163
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 1162
    goto :goto_1
.end method

.method public final w()V
    .locals 4

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1184
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    :cond_0
    return-void
.end method

.method public final x()J
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemForFeedIcon:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0, p0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c(Lcom/snapchat/android/model/chat/ChatConversation;)J

    move-result-wide v0

    .line 1199
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_0
.end method

.method public final y()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    return-object v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
