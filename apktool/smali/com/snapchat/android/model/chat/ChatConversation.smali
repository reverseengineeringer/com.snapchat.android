.class public final Lcom/snapchat/android/model/chat/ChatConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajk;
.implements Ljava/lang/Comparable;
.implements Lvp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajk;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;",
        "Lvp",
        "<",
        "Lcom/snapchat/android/model/chat/ChatFeedItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHAT_ID_DELIMITER:Ljava/lang/String; = "~"

.field public static final MS_TO_SHOW_FAILED_AND_NONRECOVERABLE_IN_FEED:I = 0x7d0

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
            "Lbif;",
            ">;"
        }
    .end annotation
.end field

.field public mFailedReleaseMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbju;",
            ">;"
        }
    .end annotation
.end field

.field public mFailedSnaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lake;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedIconUpdater:Lvi;

.field public mGsonWrapper:Laum;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mHasUnreleasedReceivedChats:Z

.field public mHasUnviewedCash:Z

.field public mHasUnviewedReceivedSnaps:Z

.field public mHasUnviewedSnapsWithAudio:Z

.field public mHereAuth:Lbjc;

.field public final mId:Ljava/lang/String;

.field public mIsDisplayingVideo:Z

.field public mIsNotifyingRecipientAboutTyping:Z

.field public mIsRecipientPresent:Z

.field public mIsSavableConversation:Z

.field public mIsStub:Z

.field public mIsUserInConversation:Z

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

.field public mLastChatFromServer:Lakw;

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

.field mMediaImageCache:Laxn;

.field public mMessagingAuthToken:Lbjy;

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
            "Lakw;",
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

.field public mSendingCashManager:Lyw;
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
    .annotation runtime Lbxp;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbil;",
            ">;"
        }
    .end annotation
.end field

.field public mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

.field public mSlightlySecurePreferences:Laze;
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
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 190
    invoke-static {p1, p2}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Laxo;->CHAT_MEDIA_IMAGE_CACHE:Laxn;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Laxn;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingReceivedChats:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedReleaseMessages:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedSnaps:Ljava/util/Set;

    .line 137
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 141
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    .line 146
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 152
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mEnteredConversationFromRecentStoryReply:Z

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsSavableConversation:Z

    .line 194
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 196
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 200
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceHandler:Landroid/os/Handler;

    .line 202
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$1;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSenderPresenceRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/snapchat/android/model/chat/ChatConversation$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/chat/ChatConversation$2;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    .line 222
    new-instance v0, Lazf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lazh;->PER_CONVERSATION_AUTH:Lazf;

    iget-object v2, v2, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lazh;->PER_CONVERSATION_AUTH:Lazf;

    iget-object v2, v2, Lazf;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 225
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v1, v0}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Laum;

    const-class v2, Lbjy;

    invoke-virtual {v1, v0, v2}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjy;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    .line 230
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSequenceNumberState:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    .line 231
    new-instance v0, Lvi;

    invoke-direct {v0, p0}, Lvi;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFeedIconUpdater:Lvi;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-boolean p3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsStub:Z

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/chat/ChatConversation;)Lbjc;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    return-object v0
.end method

.method private b(ILaka;)Ljava/util/List;
    .locals 9
    .param p2    # Laka;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laka;",
            ")",
            "Ljava/util/List",
            "<",
            "Laka;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1490
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1491
    if-nez p2, :cond_1

    move v1, v3

    .line 1492
    :goto_0
    iget-object v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v6

    .line 1494
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 1495
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

    .line 1496
    if-nez v5, :cond_2

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Laka;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v5, v3

    .line 1498
    goto :goto_1

    .line 1491
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1500
    :cond_2
    instance-of v2, v1, Laka;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laka;

    move-object v2, v0

    invoke-virtual {v2}, Laka;->A()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1501
    check-cast v1, Laka;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, p1, :cond_0

    monitor-exit v6

    move-object v1, v4

    .line 1507
    :goto_2
    return-object v1

    .line 1505
    :cond_3
    monitor-exit v6

    move-object v1, v4

    .line 1507
    goto :goto_2

    .line 1505
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
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 1532
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

.method public final A_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Z
    .locals 4

    .prologue
    .line 1560
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1561
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

    .line 1562
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    const/4 v0, 0x1

    monitor-exit v1

    .line 1567
    :goto_0
    return v0

    .line 1566
    :cond_1
    monitor-exit v1

    .line 1567
    const/4 v0, 0x0

    goto :goto_0

    .line 1566
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final B_()Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;
    .locals 1

    .prologue
    .line 621
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;->CONVERSATION:Lcom/snapchat/android/app/feature/messaging/feed/ui/fragment/FeedAdapter$FeedViewType;

    return-object v0
.end method

.method public final C()Z
    .locals 4

    .prologue
    .line 1575
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1576
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

    .line 1577
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    monitor-exit v1

    .line 1580
    :goto_0
    return v0

    .line 1579
    :cond_2
    monitor-exit v1

    .line 1580
    const/4 v0, 0x0

    goto :goto_0

    .line 1579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final D()Ljava/util/List;
    .locals 7
    .annotation build Lchc;
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
    .line 1751
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1752
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1753
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

    .line 1754
    instance-of v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v4, :cond_0

    .line 1755
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1756
    iget-object v4, v0, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 1757
    iget-object v5, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    sget-object v6, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v5, v6, :cond_0

    iget-object v4, v4, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    sget-object v5, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->WAITING_ON_RECIPIENT:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v4, v5, :cond_0

    .line 1759
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1763
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

    .line 1764
    return-object v1
.end method

.method public final a(ILaka;)I
    .locals 3
    .param p2    # Laka;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1456
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(ILaka;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    return v0
.end method

.method public final a(ILaka;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I
    .locals 5
    .param p2    # Laka;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1472
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->b(ILaka;)Ljava/util/List;

    move-result-object v1

    .line 1473
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1486
    :goto_0
    return v0

    .line 1476
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

    check-cast v0, Laka;

    .line 1477
    invoke-virtual {v0}, Laka;->M()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1478
    add-int/lit8 v1, v1, 0x1

    .line 1479
    invoke-virtual {v0}, Laka;->S()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1480
    new-instance v3, Lpg;

    sget-object v4, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v3, v0, p3, p4, v4}, Lpg;-><init>(Laka;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljavax/inject/Provider;)V

    invoke-virtual {v3}, Lpg;->a()V

    :cond_1
    move v0, v1

    move v1, v0

    .line 1484
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1486
    goto :goto_0
.end method

.method public final a(J)J
    .locals 5

    .prologue
    .line 432
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 433
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

    .line 439
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
    .line 245
    return-void
.end method

.method public final a(JZ)V
    .locals 5

    .prologue
    .line 1312
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 1313
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    .line 1316
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-eqz p3, :cond_1

    .line 1317
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 1320
    :cond_1
    return-void
.end method

.method public final a(Laka;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;I)V
    .locals 0
    .param p1    # Laka;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 254
    return-void
.end method

.method public final a(Lake;)V
    .locals 4

    .prologue
    .line 536
    invoke-virtual {p1}, Lake;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 538
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 540
    invoke-virtual {p1}, Lake;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    check-cast v0, Lake;

    .line 541
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0}, Lake;->i()V

    .line 543
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENT:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 545
    :cond_0
    return-void
.end method

.method public final a(Lbil;)V
    .locals 2

    .prologue
    .line 409
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lbju;)V
    .locals 6

    .prologue
    .line 873
    invoke-virtual {p1}, Lbju;->a()Lbju$a;

    move-result-object v0

    sget-object v1, Lbju$a;->DELETE:Lbju$a;

    if-eq v0, v1, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-virtual {p1}, Lbju;->b()Ljava/util/Map;

    move-result-object v1

    .line 878
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 879
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 880
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfTheirChatIDeleted:J

    .line 882
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 883
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 884
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSeqNumOfMyChatIDeleted:J

    .line 886
    :cond_3
    invoke-virtual {p1}, Lbju;->c()Ljava/util/Map;

    move-result-object v1

    .line 887
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 888
    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 889
    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfSentSnapReadReceiptIDeleted:J

    .line 891
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 892
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 893
    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastTimestampOfReceivedSnapReadReceiptIDeleted:J

    goto :goto_0
.end method

.method public final a(Lbjy;)V
    .locals 3
    .param p1    # Lbjy;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 375
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    .line 376
    new-instance v1, Lazf;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lazh;->PER_CONVERSATION_AUTH:Lazf;

    iget-object v2, v2, Lazf;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lazh;->PER_CONVERSATION_AUTH:Lazf;

    iget-object v2, v2, Lazf;->mType:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;

    invoke-direct {v1, v0, v2}, Lazf;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeyType;)V

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 381
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v2, v1, v0}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 382
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Laum;

    invoke-virtual {v0, p1}, Laum;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 6

    .prologue
    .line 495
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    .line 498
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    instance-of v0, p1, Laka;

    if-eqz v0, :cond_2

    .line 505
    check-cast p1, Laka;

    .line 506
    invoke-virtual {p1}, Laka;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    .line 508
    invoke-virtual {p1}, Laka;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 515
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 512
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_1

    .line 513
    check-cast p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    iget-object v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-object v0, v0, Lcom/snapchat/android/model/CashTransaction;->mTransactionStatus:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget-boolean v2, v2, Lcom/snapchat/android/model/CashTransaction;->mFromRain:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->COMPLETED:Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-object v2, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    iget v2, v2, Lcom/snapchat/android/model/CashTransaction;->mAmount:I

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v0, v2

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainBills:I

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->U()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mPendingRainTransactionTimestamp:J

    :cond_4
    invoke-static {p1}, Layg;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;->mCanShowSparkle:Z

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFeedIconUpdater:Lvi;

    invoke-virtual {v0, p1, p2}, Lvi;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)Z

    move-result v0

    .line 636
    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbck;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbck;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 640
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;->mTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->c(J)V

    .line 796
    sget-object v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 797
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 798
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->SENDING:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 799
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->v()V

    .line 800
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbca;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 801
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lchc;
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
    .line 1623
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1624
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1625
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1627
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;Ljava/util/List;Z)V
    .locals 5
    .param p1    # Ljava/util/HashMap;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lchc;
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
    .line 900
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 901
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 902
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 903
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 905
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 906
    check-cast v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 907
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 909
    invoke-static {p0, v0, v1}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_0

    .line 914
    invoke-interface {v4, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 915
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/CashUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/chat/CashFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 923
    :cond_1
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/snapchat/android/database/table/CashFeedItemTable;->a(Landroid/content/Context;Ljava/util/Collection;)V

    .line 926
    if-eqz p3, :cond_3

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsUserInConversation:Z

    if-nez v0, :cond_3

    .line 930
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 931
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 932
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    goto :goto_1

    .line 935
    :cond_2
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 938
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingCashManager:Lyw;

    invoke-virtual {v0, p0, v3}, Lyw;->b(Lcom/snapchat/android/model/chat/ChatConversation;Ljava/util/List;)V

    .line 939
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
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
    .line 269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 273
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 275
    instance-of v2, v1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v2, :cond_1

    .line 276
    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/snapchat/android/model/chat/CashFeedItem;->mCashTransaction:Lcom/snapchat/android/model/CashTransaction;

    .line 277
    iget-boolean v2, v2, Lcom/snapchat/android/model/CashTransaction;->mFailToSendReleaseMessage:Z

    if-eqz v2, :cond_1

    .line 278
    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v2, v0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 286
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 289
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v1, v3}, Lyw;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 293
    :cond_3
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
    .line 300
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 301
    return-void
.end method

.method public final a(Lbif;)Z
    .locals 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 520
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

    .line 521
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbif;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x1

    monitor-exit v1

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_1
    monitor-exit v1

    .line 526
    const/4 v0, 0x0

    goto :goto_0

    .line 525
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

    .line 648
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 649
    if-nez v0, :cond_0

    move v0, v1

    .line 662
    :goto_0
    return v0

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v2, v0}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v2

    .line 653
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 654
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    invoke-static {v0, p1}, Lavg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 662
    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 15
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 723
    .line 725
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 726
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 729
    iget-object v11, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v11

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 733
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    .line 734
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v2

    move v5, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 735
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->aj()Ljava/lang/String;

    move-result-object v3

    .line 736
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v3

    .line 739
    :goto_1
    instance-of v3, v2, Lalj;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lalj;

    move-object v3, v0

    invoke-interface {v3}, Lalj;->f()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->am()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->O()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->P()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->p()Z

    move-result v3

    if-nez v3, :cond_5

    .line 742
    :cond_2
    const/4 v3, 0x4

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v13, v3

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v7, v13, v3

    const/4 v3, 0x2

    aput-object v6, v13, v3

    const/4 v14, 0x3

    instance-of v3, v2, Lakw;

    if-eqz v3, :cond_4

    move-object v0, v2

    check-cast v0, Lakw;

    move-object v3, v0

    invoke-virtual {v3}, Lakw;->t()J

    move-result-wide v6

    :goto_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v14

    .line 745
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    if-nez v8, :cond_b

    instance-of v3, v2, Lali;

    if-eqz v3, :cond_b

    .line 747
    check-cast v2, Lali;

    invoke-interface {v2}, Lali;->l()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsIterToken:Ljava/lang/String;

    move v8, v4

    .line 748
    goto :goto_0

    .line 736
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    .line 742
    :cond_4
    const-wide/16 v6, -0x1

    goto :goto_2

    .line 751
    :cond_5
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v7, v5, v3

    const/4 v3, 0x2

    aput-object v6, v5, v3

    const/4 v13, 0x3

    instance-of v3, v2, Lakw;

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Lakw;

    move-object v3, v0

    invoke-virtual {v3}, Lakw;->t()J

    move-result-wide v6

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v13

    .line 754
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    instance-of v3, v2, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v3, :cond_8

    .line 759
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMediaImageCache:Laxn;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Laxn;->c(Ljava/lang/String;)V

    :cond_6
    :goto_4
    move v2, v4

    :goto_5
    move v5, v2

    .line 767
    goto/16 :goto_0

    .line 751
    :cond_7
    const-wide/16 v6, -0x1

    goto :goto_3

    .line 760
    :cond_8
    instance-of v3, v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_9

    .line 761
    check-cast v2, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 772
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 762
    :cond_9
    :try_start_1
    instance-of v3, v2, Lalc;

    if-eqz v3, :cond_6

    .line 763
    sget-object v3, Laxo;->DISCOVER_SHARE:Laxn;

    invoke-interface {v2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_4

    .line 769
    :cond_a
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 770
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 771
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 772
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    return v5

    :cond_b
    move v2, v5

    goto :goto_5
.end method

.method public final b(J)J
    .locals 5

    .prologue
    .line 955
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
    .line 248
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2

    .prologue
    .line 530
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 532
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
    .line 423
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mClearedChatIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 424
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 830
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    .line 832
    if-eqz p1, :cond_1

    .line 836
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 837
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    .line 842
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

    .line 844
    :cond_0
    invoke-static {}, Lzm;->a()Lzm;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    iget-boolean v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    invoke-virtual {v0, p0, v1, v2, v3}, Lzm;->a(Lcom/snapchat/android/model/chat/ChatConversation;ZZZ)V

    .line 845
    return-void

    .line 840
    :cond_1
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsDisplayingVideo:Z

    goto :goto_0
.end method

.method public final c()Laka;
    .locals 1

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lake;
    .locals 4

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1071
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

    .line 1072
    instance-of v3, v0, Lake;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1073
    check-cast v0, Lake;

    monitor-exit v1

    .line 1077
    :goto_0
    return-object v0

    .line 1076
    :cond_1
    monitor-exit v1

    .line 1077
    const/4 v0, 0x0

    goto :goto_0

    .line 1076
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
    .line 1323
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1324
    iput-wide p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirLastSeqNum:J

    .line 1326
    :cond_0
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 4

    .prologue
    .line 569
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 572
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbca;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lbca;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 574
    return-void

    .line 572
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
    .line 848
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    .line 850
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->x()V

    .line 851
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 80
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-wide v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v0, v1, v2, v3}, Lbgu;->a(JJ)I

    move-result v0

    return v0
.end method

.method public final d()Laka;
    .locals 5

    .prologue
    .line 356
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 360
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

    .line 361
    instance-of v2, v1, Laka;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Laka;

    move-object v2, v0

    invoke-virtual {v2}, Laka;->A()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    check-cast v0, Laka;

    move-object v2, v0

    invoke-virtual {v2}, Laka;->y()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    check-cast v1, Laka;

    monitor-exit v3

    .line 367
    :goto_0
    return-object v1

    .line 366
    :cond_1
    monitor-exit v3

    .line 367
    const/4 v1, 0x0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1088
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

    .line 1089
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1090
    monitor-exit v1

    .line 1094
    :goto_0
    return-object v0

    .line 1093
    :cond_1
    monitor-exit v1

    .line 1094
    const/4 v0, 0x0

    goto :goto_0

    .line 1093
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
    .line 1512
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmIPresent:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 1513
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/snapchat/android/model/chat/CashFeedItem;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1105
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

    .line 1106
    instance-of v3, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1107
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    monitor-exit v1

    .line 1111
    :goto_0
    return-object v0

    .line 1110
    :cond_1
    monitor-exit v1

    .line 1111
    const/4 v0, 0x0

    goto :goto_0

    .line 1110
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
    .line 1698
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    if-eq v0, p1, :cond_0

    .line 1699
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mAmITyping:Z

    .line 1701
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsNotifyingRecipientAboutTyping:Z

    if-nez v0, :cond_0

    .line 1702
    new-instance v0, Ltu;

    invoke-direct {v0, p0}, Ltu;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0}, Ltu;->execute()V

    .line 1705
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1423
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1426
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Lakw;
    .locals 4

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1121
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

    .line 1122
    instance-of v3, v0, Lakw;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1123
    check-cast v0, Lakw;

    monitor-exit v1

    .line 1127
    :goto_0
    return-object v0

    .line 1126
    :cond_1
    monitor-exit v1

    .line 1127
    const/4 v0, 0x0

    goto :goto_0

    .line 1126
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
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Lakw;
    .locals 4

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1137
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

    .line 1138
    instance-of v3, v0, Lakw;

    if-eqz v3, :cond_0

    .line 1139
    check-cast v0, Lakw;

    .line 1140
    invoke-virtual {v0}, Lakw;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1141
    monitor-exit v1

    .line 1146
    :goto_0
    return-object v0

    .line 1145
    :cond_1
    monitor-exit v1

    .line 1146
    const/4 v0, 0x0

    goto :goto_0

    .line 1145
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
    .line 1446
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->j()Laka;

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
    .line 1635
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    return v0
.end method

.method public final h(Ljava/lang/String;)Lbil;
    .locals 4

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingMessages:Ljava/util/Set;

    monitor-enter v1

    .line 1157
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

    check-cast v0, Lbil;

    .line 1158
    invoke-virtual {v0}, Lbil;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1159
    monitor-exit v1

    .line 1163
    :goto_0
    return-object v0

    .line 1162
    :cond_1
    monitor-exit v1

    .line 1163
    const/4 v0, 0x0

    goto :goto_0

    .line 1162
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
    .line 1431
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/lang/String;)Lake;
    .locals 5

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1172
    :try_start_0
    invoke-static {p1}, Lavr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1173
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

    .line 1174
    instance-of v4, v0, Lake;

    if-eqz v4, :cond_0

    .line 1175
    check-cast v0, Lake;

    .line 1176
    invoke-virtual {v0}, Lake;->ae()Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-static {v4}, Lavr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1179
    monitor-exit v1

    .line 1184
    :goto_0
    return-object v0

    .line 1183
    :cond_1
    monitor-exit v1

    .line 1184
    const/4 v0, 0x0

    goto :goto_0

    .line 1183
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
    .line 304
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mMyUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Laka;
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 328
    iput v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    .line 329
    const/4 v4, 0x0

    .line 330
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 331
    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    .line 332
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v5

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 336
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

    .line 337
    instance-of v3, v2, Laka;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Laka;

    move-object v3, v0

    invoke-virtual {v3}, Laka;->A()Z

    move-result v3

    if-nez v3, :cond_3

    .line 338
    check-cast v2, Laka;

    .line 339
    if-nez v4, :cond_1

    move-object v3, v2

    .line 345
    :goto_1
    invoke-virtual {v2}, Laka;->ah()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedSnapsWithAudio:Z

    .line 348
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    move-object v2, v3

    :goto_2
    move-object v4, v2

    .line 350
    goto :goto_0

    .line 342
    :cond_1
    iget v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    int-to-double v8, v3

    invoke-virtual {v2}, Laka;->G()D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-int v3, v8

    iput v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSecondsLeftInUnviewedSnaps:I

    move-object v3, v4

    goto :goto_1

    .line 351
    :cond_2
    monitor-exit v5

    .line 352
    return-object v4

    .line 351
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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1604
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1605
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1607
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1609
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->g()V

    .line 1610
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    .line 391
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1614
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1615
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    .line 398
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mNumSCCPChatMessagesSendingOrSent:I

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mLastSCCPMessageSentTimestamp:J

    .line 400
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1618
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1619
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingChatFeedItemIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1620
    return-void
.end method

.method public final m()I
    .locals 5

    .prologue
    .line 455
    const/4 v1, 0x0

    .line 456
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 457
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

    .line 458
    instance-of v4, v0, Laka;

    if-eqz v4, :cond_1

    check-cast v0, Laka;

    invoke-virtual {v0}, Laka;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 461
    goto :goto_0

    .line 462
    :cond_0
    monitor-exit v2

    .line 463
    return v1

    .line 462
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

.method public final n()Laka;
    .locals 5

    .prologue
    .line 467
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v3

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 471
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

    .line 472
    instance-of v2, v1, Lcom/snapchat/android/model/Snap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/Snap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/Snap;->an()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    check-cast v1, Laka;

    monitor-exit v3

    .line 477
    :goto_0
    return-object v1

    .line 476
    :cond_1
    monitor-exit v3

    .line 477
    const/4 v1, 0x0

    goto :goto_0

    .line 476
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
    .line 581
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    return-object v0
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 590
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChatsSorted:Z

    .line 594
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
    .line 603
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 604
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    monitor-exit v1

    .line 608
    return-object v0

    .line 606
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
    .line 626
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFeedIconUpdater:Lvi;

    invoke-virtual {v0}, Lvi;->a()Z

    move-result v0

    .line 627
    if-eqz v0, :cond_0

    .line 629
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbck;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lbck;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 631
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 681
    .line 682
    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v2, :cond_1

    .line 683
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    .line 684
    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    move v0, v1

    .line 688
    :cond_1
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Z)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 692
    :cond_3
    return-void
.end method

.method public final t()V
    .locals 5

    .prologue
    .line 698
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 699
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

    .line 700
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v3

    .line 701
    instance-of v4, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-nez v4, :cond_1

    instance-of v4, v0, Lake;

    if-eqz v4, :cond_2

    .line 702
    :cond_1
    sget-object v0, Laxo;->CHAT_MEDIA_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, v3}, Laxn;->c(Ljava/lang/String;)V

    .line 703
    sget-object v0, Laxo;->DSNAP_MEDIA_CACHE:Laxn;

    invoke-virtual {v0, v3}, Laxn;->c(Ljava/lang/String;)V

    .line 704
    sget-object v0, Laxo;->UNENCRYPTED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0, v3}, Laxn;->c(Ljava/lang/String;)V

    .line 705
    sget-object v0, Laxo;->DISCOVER_SHARE:Laxn;

    invoke-virtual {v0, v3}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 706
    :cond_2
    :try_start_1
    instance-of v3, v0, Laka;

    if-eqz v3, :cond_0

    .line 707
    check-cast v0, Laka;

    .line 708
    sget-object v3, Laxo;->SNAP_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0}, Laka;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laxn;->c(Ljava/lang/String;)V

    .line 709
    sget-object v3, Laxo;->SNAP_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0}, Laka;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Laxn;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final u()V
    .locals 14
    .annotation build Lawj;
    .end annotation

    .prologue
    const-wide/32 v12, 0x36ee80

    .line 960
    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v4

    .line 961
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mFailedChatMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 962
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 963
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbif;

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Lbif;->f()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v5, v6, v12

    if-ltz v5, :cond_0

    .line 967
    invoke-virtual {v2}, Lbif;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->f(Ljava/lang/String;)Lakw;

    move-result-object v2

    .line 968
    if-eqz v2, :cond_1

    .line 969
    iget-object v5, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 971
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 975
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 976
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 977
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 978
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 979
    instance-of v2, v3, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v2, :cond_3

    .line 980
    move-object v0, v3

    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    move-object v2, v0

    .line 981
    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/CashFeedItem;->P()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v3, v8, v12

    if-ltz v3, :cond_3

    .line 985
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 991
    :cond_4
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b(Landroid/content/Context;Ljava/util/Collection;)V

    .line 992
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final v()V
    .locals 6

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v1

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/snapchat/android/model/chat/ChatConversation;->p()V

    .line 1056
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    .line 1057
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1060
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->g()V

    .line 1062
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfm;

    invoke-direct {v1}, Lbfm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1063
    return-void

    .line 1060
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final w()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1208
    iget-object v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    monitor-enter v2

    .line 1209
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

    .line 1210
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    monitor-exit v2

    move v0, v1

    .line 1217
    :goto_0
    return v0

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1217
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mChats:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_2
    monitor-exit v2

    goto :goto_0

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1216
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1217
    goto :goto_2
.end method

.method public final x()V
    .locals 4

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1239
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientPresenceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1242
    :cond_0
    return-void
.end method

.method public final y()J
    .locals 4

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mItemsForFeedIcon:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v0

    .line 1255
    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1259
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_0
.end method

.method public final z()Ljava/util/List;
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
    .line 1416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    return-object v0
.end method
