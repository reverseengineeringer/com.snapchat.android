.class public final Lakp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laib;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakp$b;,
        Lakp$a;
    }
.end annotation


# static fields
.field protected static DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService; = null

.field private static final TAG:Ljava/lang/String; = "User"

.field public static UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field static sInstance:Lakp;

.field static final sUserSyncLock:Ljava/lang/Object;


# instance fields
.field private final mAddressBookUtils:Latr;

.field public mBests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field mCashProviderManager:Lqx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mChatConversationManager:Lakx;

.field private final mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final mClock:Lbhk;

.field public mContactsNotOnSnapchat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public final mContactsOnSnapchat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public final mContactsOnSnapchatSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevUtils:Lbal;

.field private final mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field public final mDuplicateFirstNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFriendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public final mFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public mFriendsBlockedFromSeeingMyStory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFriendsWhoAddedMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentityUtils:Laup;

.field public mInitialized:Z

.field public mMessagingGatewayInfo:Lbjl;

.field public mNextReplayAvailableRealtime:J

.field private final mRecents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public mServerHasMostRecentReplayTime:Z

.field mSlightlySecurePreferences:Laze;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mSnapchatServiceManager:Laph;

.field public mSnapsToBeUpdatedOnServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laka;",
            ">;"
        }
    .end annotation
.end field

.field public final mStoryLibrary:Lakk;

.field public final mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lakm;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestedFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field mUserDatabaseLoader:Lakq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mUserPrefs:Lakr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lakp;->sUserSyncLock:Ljava/lang/Object;

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lakp;->sContext:Landroid/content/Context;

    .line 117
    sget-object v0, Lavf;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lakp;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 223
    new-instance v0, Lakp$1;

    invoke-direct {v0}, Lakp$1;-><init>()V

    sput-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    .line 172
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v1

    invoke-static {}, Lakx;->c()Lakx;

    move-result-object v2

    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v4

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v5

    new-instance v6, Lbhk;

    invoke-direct {v6}, Lbhk;-><init>()V

    new-instance v7, Laup;

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {v7, v0}, Laup;-><init>(Lakr;)V

    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Laph;->a()Laph;

    move-result-object v10

    new-instance v11, Latr;

    invoke-direct {v11}, Latr;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lakp;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lakx;Lakk;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lakr;Lbhk;Laup;Lbal;Ljava/util/List;Laph;Latr;)V

    .line 177
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lakx;Lakk;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lakr;Lbhk;Laup;Lbal;Ljava/util/List;Laph;Latr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;",
            "Lakx;",
            "Lakk;",
            "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;",
            "Lakr;",
            "Lbhk;",
            "Laup;",
            "Lbal;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Laph;",
            "Latr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lakp;->mNextReplayAvailableRealtime:J

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakp;->mServerHasMostRecentReplayTime:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lakp;->mMessagingGatewayInfo:Lbjl;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mBests:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lakp;->mRecents:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lakp;->mFriendMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lakp;->mDuplicateFirstNames:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakp;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lakp;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lakp;->mInitialized:Z

    .line 183
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lakp;)V

    .line 184
    iput-object p1, p0, Lakp;->mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 185
    iput-object p2, p0, Lakp;->mChatConversationManager:Lakx;

    .line 186
    iput-object p3, p0, Lakp;->mStoryLibrary:Lakk;

    .line 187
    iput-object p4, p0, Lakp;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 188
    iput-object p5, p0, Lakp;->mUserPrefs:Lakr;

    .line 189
    iput-object p6, p0, Lakp;->mClock:Lbhk;

    .line 190
    iput-object p7, p0, Lakp;->mIdentityUtils:Laup;

    .line 191
    iput-object p8, p0, Lakp;->mDevUtils:Lbal;

    .line 192
    iput-object p9, p0, Lakp;->mFriends:Ljava/util/List;

    .line 193
    iput-object p10, p0, Lakp;->mSnapchatServiceManager:Laph;

    .line 194
    iput-object p11, p0, Lakp;->mAddressBookUtils:Latr;

    .line 195
    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    .line 463
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 464
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 465
    iget-object v3, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 466
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 467
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->f()Ljava/lang/String;

    move-result-object v0

    .line 468
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    iget-object v2, p0, Lakp;->mDuplicateFirstNames:Ljava/util/Set;

    monitor-enter v2

    .line 476
    :try_start_2
    iget-object v0, p0, Lakp;->mDuplicateFirstNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 477
    iget-object v0, p0, Lakp;->mDuplicateFirstNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 478
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lakp;
    .locals 4
    .annotation build Lcbr;
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 199
    sget-object v0, Lakp;->sInstance:Lakp;

    if-eqz v0, :cond_0

    sget-object v0, Lakp;->sInstance:Lakp;

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lakp;->sInstance:Lakp;

    .line 216
    :goto_0
    return-object v0

    .line 202
    :cond_0
    sget-object v1, Lakp;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 205
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 206
    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 207
    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " called getInstance on the UI thread."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    sget-object v0, Lakp;->sInstance:Lakp;

    if-nez v0, :cond_3

    .line 214
    sget-object v0, Lakp;->sInstance:Lakp;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_USER_INIT_DELAY:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lakp;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->c(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/snapchat/android/util/debug/ScApplicationInfo;->DEFAULT_VERSION_CODE:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lakp;->a(Z)V

    .line 216
    :cond_3
    :goto_2
    sget-object v0, Lakp;->sInstance:Lakp;

    monitor-exit v1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 214
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lakp;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private varargs a(Lakp$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 2

    .prologue
    .line 1474
    sget-object v0, Lakp;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lakp$6;

    invoke-direct {v1, p0, p2, p1}, Lakp$6;-><init>(Lakp;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;Lakp$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1482
    return-void
.end method

.method private static a(Z)V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v1, 0x0

    .line 263
    new-instance v0, Lakp;

    invoke-direct {v0}, Lakp;-><init>()V

    sput-object v0, Lakp;->sInstance:Lakp;

    .line 264
    if-eqz p0, :cond_1

    .line 265
    sget-object v2, Lakp;->sInstance:Lakp;

    sget-object v3, Lakp;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lakr;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbfo;

    invoke-direct {v1}, Lbfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    new-instance v0, Lpx;

    invoke-direct {v0}, Lpx;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpx;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v0, Lakp;->sInstance:Lakp;

    if-eqz v0, :cond_0

    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laph;->a(ZZ)I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lakr;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    :goto_0
    sget-object v0, Lakp;->sInstance:Lakp;

    iput-boolean v14, v0, Lakp;->mInitialized:Z

    .line 268
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lakr;->m()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v0, v2, Lakp;->mSlightlySecurePreferences:Laze;

    sget-object v4, Lazh;->MESSAGING_GATEWAY_INFO:Lazf;

    invoke-virtual {v0, v4}, Laze;->a(Lazf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lbjl;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    iput-object v0, v2, Lakp;->mMessagingGatewayInfo:Lbjl;

    :cond_3
    iget-object v0, v2, Lakp;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v0}, Laze;->a()V

    iget-object v4, v2, Lakp;->mUserDatabaseLoader:Lakq;

    sget-object v5, Lakp;->sInstance:Lakp;

    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_5

    aget-object v1, v6, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/snapchat/android/database/table/DbTable;->d(Lakp;)V

    iget-object v10, v4, Lakq;->mLifecycleAnalytics:Lnw;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v12, v8

    iget-object v11, v10, Lnw;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v11, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    iget-object v11, v10, Lnw;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v1, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v10, Lnw;->mDidLoadFromDatabase:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lakp;->f()V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a([Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 393
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    .line 394
    invoke-direct {p0, v2, p2}, Lakp;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    .line 395
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 397
    :cond_0
    return-void

    .line 392
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 4
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lq;
        .end annotation
    .end param

    .prologue
    .line 595
    iget-wide v0, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-static {}, Lakr;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    if-eqz p1, :cond_0

    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v3, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    .line 422
    :goto_0
    return v0

    .line 406
    :cond_1
    invoke-static {p1}, Lakp;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 407
    iput-boolean v1, v3, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    .line 409
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 411
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 412
    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 413
    iget-wide v4, v3, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iget-wide v6, v3, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iget-wide v8, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 415
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 417
    goto :goto_0

    :cond_4
    move v0, v2

    .line 422
    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 568
    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 591
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 568
    goto :goto_0

    .line 573
    :cond_2
    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 574
    :try_start_0
    iget-object v3, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 575
    monitor-exit v2

    move v0, v1

    goto :goto_1

    .line 577
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    iget-object v2, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v3, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz p2, :cond_0

    .line 586
    :cond_4
    invoke-static {p1}, Lakp;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 587
    goto :goto_1

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v2, v0

    .line 581
    goto :goto_2
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1675
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1676
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1677
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1678
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1679
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1682
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 366
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 367
    if-nez v2, :cond_0

    .line 368
    iget-wide v2, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iget-wide v6, v0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 373
    :goto_1
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    :cond_0
    iget-wide v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_1

    .line 377
    :cond_1
    new-instance v0, Lakp$2;

    invoke-direct {v0, p0, v1}, Lakp$2;-><init>(Lakp;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 389
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbiu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 880
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 881
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    .line 882
    iget-object v1, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v0}, Lbiu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 883
    new-instance v4, Lcom/snapchat/android/model/Friend;

    invoke-direct {v4, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    .line 884
    if-eqz v1, :cond_0

    .line 885
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, v4, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 886
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 887
    iget-wide v6, v4, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iput-wide v6, v1, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 889
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {p0, v2}, Lakp;->a(Ljava/util/List;)V

    .line 893
    return-void
.end method

.method private static f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 4

    .prologue
    .line 492
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-wide v2, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 494
    iget-wide v2, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    .line 495
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    .line 496
    iget v1, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    iput v1, v0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    .line 497
    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    .line 499
    return-object v0
.end method

.method public static g()Lakp;
    .locals 1

    .prologue
    .line 528
    sget-object v0, Lakp;->sInstance:Lakp;

    return-object v0
.end method

.method public static y()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1518
    sget-object v0, Lakp;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lakp;->sUserSyncLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lbhx;Z)Lakp$a;
    .locals 12
    .param p1    # Lbhx;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1157
    invoke-virtual {p1}, Lbhx;->d()Lbkq;

    move-result-object v0

    .line 1158
    invoke-virtual {p1}, Lbhx;->f()Lbix;

    move-result-object v1

    .line 1159
    invoke-virtual {p1}, Lbhx;->g()Lbkg;

    move-result-object v2

    .line 1160
    invoke-virtual {p1}, Lbhx;->h()Ljava/util/List;

    move-result-object v3

    .line 1162
    invoke-virtual {p1}, Lbhx;->k()Lblj;

    move-result-object v4

    .line 1163
    invoke-virtual {p1}, Lbhx;->i()Lbio;

    move-result-object v5

    .line 1165
    invoke-virtual {p1}, Lbhx;->j()Lbir;

    move-result-object v6

    .line 1166
    invoke-virtual {p1}, Lbhx;->b()Lbjl;

    move-result-object v7

    .line 1168
    invoke-virtual {p0, v0, p2}, Lakp;->a(Lbkq;Z)Z

    move-result v8

    .line 1169
    invoke-virtual {p0, v1}, Lakp;->a(Lbix;)Z

    move-result v9

    .line 1170
    invoke-virtual {p0, v2}, Lakp;->a(Lbkg;)Z

    move-result v10

    .line 1171
    invoke-virtual {p0, v3, v5, p2}, Lakp;->a(Ljava/util/List;Lbio;Z)Z

    move-result v11

    .line 1175
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lblj;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Lakr;->s(Z)V

    invoke-virtual {v4}, Lblj;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lakr;->t(Z)V

    invoke-virtual {v4}, Lblj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lakr;->u(Ljava/lang/String;)V

    invoke-virtual {v4}, Lblj;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lakr;->v(Z)V

    invoke-virtual {v4}, Lblj;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lakr;->e(I)V

    invoke-virtual {v4}, Lblj;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lakr;->w(Z)V

    iget-object v0, p0, Lakp;->mSnapchatServiceManager:Laph;

    iget-object v1, v0, Laph;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "op_code"

    const/16 v3, 0x409

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "action"

    sget-object v3, Lcom/snapchat/android/model/SuggestedFriendAction;->LIST:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/SuggestedFriendAction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Laph;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Laup;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Laup;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Lakr;->bm()J

    move-result-wide v0

    invoke-virtual {v4}, Lblj;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lakr;->r(Z)V

    .line 1177
    :cond_1
    invoke-virtual {p0, v7}, Lakp;->a(Lbjl;)V

    .line 1180
    if-eqz v6, :cond_5

    iget-object v0, p0, Lakp;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v6}, Lbir;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lbir;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lbir;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lbir;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lbir;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :goto_2
    if-eqz p2, :cond_2

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lakp;->mInitialized:Z

    .line 1186
    :cond_2
    new-instance v0, Lakp$a;

    invoke-direct {v0, v8, v9, v10, v11}, Lakp$a;-><init>(ZZZZ)V

    return-object v0

    .line 1175
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1180
    :cond_5
    iget-object v0, p0, Lakp;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 730
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    monitor-exit v1

    return-object v0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    invoke-virtual {p0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 552
    invoke-virtual {p0}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 554
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 556
    :goto_0
    invoke-direct {p0, v0, v1}, Lakp;->a(Lcom/snapchat/android/model/Friend;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 560
    :cond_2
    return-object v2

    .line 554
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Laka;)V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lakp;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-virtual {p1}, Laka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    return-void
.end method

.method public final a(Lakp$b;)V
    .locals 6

    .prologue
    .line 1461
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 1462
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1463
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->ordinal()I

    move-result v5

    aput-object v4, v1, v5

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    :cond_0
    invoke-direct {p0, p1, v1}, Lakp;->a(Lakp$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1466
    return-void
.end method

.method public final a(Lbjl;)V
    .locals 3
    .param p1    # Lbjl;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1333
    if-nez p1, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1337
    :cond_0
    iput-object p1, p0, Lakp;->mMessagingGatewayInfo:Lbjl;

    .line 1339
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1340
    iget-object v1, p0, Lakp;->mSlightlySecurePreferences:Laze;

    sget-object v2, Lazh;->MESSAGING_GATEWAY_INFO:Lazf;

    invoke-virtual {v1, v2, v0}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdi;

    invoke-direct {v1}, Lbdi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1547
    invoke-virtual {p0, p1}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1548
    if-eqz v0, :cond_1

    .line 1549
    iput-boolean p2, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 1556
    :goto_0
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean p2, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1551
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 1552
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 1553
    invoke-virtual {p0, v0}, Lakp;->d(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 1556
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 897
    new-instance v0, Lakp$4;

    invoke-direct {v0, p0}, Lakp$4;-><init>(Lakp;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 907
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 909
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 910
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcp;

    invoke-direct {v1}, Lbcp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 912
    return-void

    .line 910
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final varargs a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 1

    .prologue
    .line 1469
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lakp;->a(Lakp$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1470
    return-void
.end method

.method public final a(Lbix;)Z
    .locals 12
    .param p1    # Lbix;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 1110
    if-eqz p1, :cond_5

    .line 1111
    invoke-virtual {p1}, Lbix;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lbix;->c()Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lakp;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lbiu;

    move-object v3, v0

    invoke-virtual {v3}, Lbiu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lbiu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lakr;->g(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lbiu;->c()Lbiu$a;

    move-result-object v2

    sget-object v8, Lbiu$a;->DELETED:Lbiu$a;

    if-eq v2, v8, :cond_1

    new-instance v8, Lcom/snapchat/android/model/Friend;

    invoke-direct {v8, v3, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v8, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/Friend;

    if-eqz v2, :cond_3

    iget-wide v10, v2, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iput-wide v10, v8, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iget-object v9, v2, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    iput-object v9, v8, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    iget-object v9, v2, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    iput-object v9, v8, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->r()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    :cond_3
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->s()V

    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lbiu;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lakp;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v3}, Lbiu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lakp;->f()V

    .line 1112
    invoke-virtual {p1}, Lbix;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lakp;->e(Ljava/util/List;)V

    .line 1113
    const/4 v2, 0x1

    .line 1117
    :goto_2
    return v2

    .line 1116
    :cond_5
    invoke-virtual {p0}, Lakp;->u()V

    .line 1117
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final a(Lbkg;)Z
    .locals 12
    .param p1    # Lbkg;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1226
    if-eqz p1, :cond_c

    .line 1227
    invoke-virtual {p1}, Lbkg;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lbjx$a;->EQUAL:Lbjx$a;

    invoke-virtual {p1}, Lbkg;->g()Lbjx;

    move-result-object v4

    invoke-virtual {v4}, Lbjx;->e()Lbjx$a;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1258
    :goto_0
    return v2

    .line 1233
    :cond_0
    invoke-virtual {p1}, Lbkg;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lbkg;->g()Lbjx;

    move-result-object v2

    invoke-virtual {v2}, Lbjx;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1234
    invoke-virtual {p1}, Lbkg;->g()Lbjx;

    move-result-object v2

    invoke-virtual {v2}, Lbjx;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lakr;->k(Ljava/lang/String;)V

    .line 1237
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    invoke-virtual {p1}, Lbkg;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1239
    invoke-virtual {p1}, Lbkg;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbkj;

    .line 1240
    new-instance v5, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v5, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lbkj;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1244
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    invoke-virtual {p1}, Lbkg;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1246
    invoke-virtual {p1}, Lbkg;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbjm;

    .line 1247
    new-instance v6, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v6, v2}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lbjm;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1251
    :cond_3
    iget-object v5, p0, Lakp;->mStoryLibrary:Lakk;

    iget-object v2, v5, Lakk;->mStories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v6, v5, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v2, v5, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v8, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v9

    const-string v10, "my_story_ads79sdf"

    iget-object v11, v8, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Laki;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lakl;->az()V

    invoke-virtual {v5, v2}, Lakk;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v2

    invoke-virtual {v2, v3}, Lajx;->a(Ljava/util/List;)V

    iget-object v3, v5, Lakk;->mStories:Ljava/util/Map;

    invoke-virtual {v2}, Lajx;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v2, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v8

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lakl;->mClientId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Laki;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lakl;->az()V

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lakk;->b(Ljava/util/List;)V

    iget-object v2, v5, Lakk;->mStories:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lpf;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lpf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lpf;->execute()V

    goto :goto_4

    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Laki;->a()Laki;

    move-result-object v2

    invoke-virtual {v2}, Laki;->c()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laji;

    iget-object v7, v2, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    iget-wide v8, v7, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    const-wide/32 v10, 0xea60

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laji;

    invoke-static {}, Laki;->a()Laki;

    move-result-object v4

    invoke-virtual {v4, v2}, Laki;->b(Laji;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v5}, Lakk;->j()V

    .line 1252
    invoke-virtual {p1}, Lbkg;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v2

    .line 1253
    iget-object v3, p0, Lakp;->mStoryLibrary:Lakk;

    invoke-virtual {p1}, Lbkg;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lakk;->a(Ljava/util/List;Z)V

    .line 1254
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1257
    :cond_c
    iget-object v3, p0, Lakp;->mStoryLibrary:Lakk;

    invoke-virtual {v3}, Lakk;->h()V

    goto/16 :goto_0
.end method

.method public final a(Lbkq;Z)Z
    .locals 12
    .param p1    # Lbkq;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const/4 v11, 0x6

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 1040
    if-nez p1, :cond_0

    move v6, v2

    .line 1100
    :goto_0
    return v6

    .line 1044
    :cond_0
    invoke-virtual {p1}, Lbkq;->R()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    sget-object v7, Lakp;->sContext:Landroid/content/Context;

    invoke-static {}, Lakr;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lakr;->Z()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v6

    :goto_1
    if-eqz v3, :cond_3

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    invoke-static {}, Lakr;->ac()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-eqz v3, :cond_9

    :cond_1
    move v3, v6

    :goto_2
    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lakr;->k()J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v3, v4, v8

    if-lez v3, :cond_a

    move v3, v6

    :goto_3
    if-eqz v3, :cond_b

    :cond_2
    invoke-static {}, Laph;->a()Laph;

    move-result-object v3

    invoke-virtual {v3, v7, v2, v2}, Laph;->a(Landroid/content/Context;ZZ)I

    .line 1046
    :cond_3
    :goto_4
    invoke-static {p1}, Lakr;->b(Lbkq;)V

    .line 1048
    invoke-virtual {p1}, Lbkq;->B()Ljava/util/List;

    move-result-object v3

    .line 1049
    if-eqz v3, :cond_4

    .line 1050
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1052
    :cond_4
    invoke-virtual {p1}, Lbkq;->E()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-virtual {p1}, Lbkq;->D()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt v4, v5, :cond_5

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_c

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge v4, v5, :cond_c

    :cond_5
    const-wide/16 v0, -0x1

    :cond_6
    :goto_5
    iput-wide v0, p0, Lakp;->mNextReplayAvailableRealtime:J

    .line 1057
    invoke-virtual {p1}, Lbkq;->U()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p1}, Lbkq;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbkq;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbkq;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbkq;->Y()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lavb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lakr;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1065
    invoke-virtual {p1}, Lbkq;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lbkq;->M()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :goto_6
    invoke-virtual {p1}, Lbkq;->N()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lbkq;->N()Ljava/lang/String;

    move-result-object v1

    .line 1069
    :goto_7
    invoke-virtual {p1}, Lbkq;->L()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lbkq;->L()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1071
    :goto_8
    invoke-virtual {p1}, Lbkq;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lakr;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    if-eqz p2, :cond_7

    .line 1077
    invoke-static {}, Lakr;->ap()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v1, v2, :cond_7

    invoke-static {}, Lakr;->T()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lakr;->at()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1079
    iget-object v1, p0, Lakp;->mCashProviderManager:Lqx;

    invoke-virtual {v1, v0}, Lqx;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1081
    iget-object v1, p0, Lakp;->mCashProviderManager:Lqx;

    invoke-virtual {v1, v0}, Lqx;->a(Ljava/lang/String;)Lre;

    move-result-object v0

    invoke-interface {v0}, Lre;->a()V

    .line 1088
    :cond_7
    :goto_9
    invoke-virtual {p1}, Lbkq;->aa()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1089
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    invoke-virtual {p1}, Lbkq;->aa()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjn;

    .line 1091
    new-instance v3, Lajy;

    invoke-direct {v3, v0}, Lajy;-><init>(Lbjn;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_8
    move v3, v2

    .line 1044
    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move v3, v2

    goto/16 :goto_3

    :cond_b
    invoke-static {}, Laph;->a()Laph;

    move-result-object v3

    invoke-virtual {v3, v7, v6, v6}, Laph;->a(Landroid/content/Context;ZZ)I

    goto/16 :goto_4

    .line 1052
    :cond_c
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_6

    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_6

    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7, v11, v6}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    goto/16 :goto_5

    .line 1065
    :cond_d
    const-string v0, "SQUARE"

    goto/16 :goto_6

    .line 1067
    :cond_e
    invoke-virtual {p1}, Lbkq;->n()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_f
    move v2, v6

    .line 1069
    goto/16 :goto_8

    .line 1083
    :cond_10
    invoke-static {}, Lakr;->ah()V

    goto/16 :goto_9

    .line 1093
    :cond_11
    iget-object v0, p0, Lakp;->mStoryLibrary:Lakk;

    invoke-virtual {v0, v1}, Lakk;->a(Ljava/util/List;)V

    .line 1097
    :cond_12
    invoke-virtual {p1}, Lbkq;->ad()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Lakr;->u(Z)V

    .line 1099
    iget-object v0, p0, Lakp;->mSnapchatServiceManager:Laph;

    invoke-virtual {p1}, Lbkq;->ae()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laph;->a(Ljava/util/List;)I

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Lbio;Z)Z
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lbio;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbid;",
            ">;",
            "Lbio;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1203
    if-nez p1, :cond_0

    .line 1215
    :goto_0
    return v0

    .line 1207
    :cond_0
    if-eqz p2, :cond_1

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Updating conversations with isDelta = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbio;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1211
    :cond_1
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 1213
    iget-object v0, p0, Lakp;->mChatConversationManager:Lakx;

    invoke-virtual {v0, p1, v1, v1, p3}, Lakx;->a(Ljava/util/List;ZZZ)V

    move v0, v1

    .line 1215
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 737
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 738
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 739
    iget-object v3, v0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    monitor-exit v1

    .line 744
    :goto_0
    return-object v0

    .line 743
    :cond_1
    monitor-exit v1

    .line 744
    const/4 v0, 0x0

    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1585
    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v1, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 931
    :try_start_0
    iget-object v0, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 932
    iget-object v0, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/snapchat/android/model/Friend;)Z
    .locals 2

    .prologue
    .line 754
    iget-object v1, p0, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lakp;->mContactsOnSnapchatSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    iget-object v0, p0, Lakp;->mRecents:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbiu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1309
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiu;

    .line 1311
    invoke-virtual {v0}, Lbiu;->c()Lbiu$a;

    move-result-object v3

    sget-object v4, Lbiu$a;->DELETED:Lbiu$a;

    if-eq v3, v4, :cond_2

    .line 1313
    new-instance v3, Lcom/snapchat/android/model/Friend;

    invoke-direct {v3, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbiu;Lakp;)V

    .line 1316
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->s()V

    .line 1318
    iget-object v4, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1319
    iget-object v4, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v4, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    invoke-virtual {v0}, Lbiu;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1323
    iget-object v3, p0, Lakp;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v0}, Lbiu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1327
    :cond_3
    :try_start_1
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1328
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/Friend;)Z
    .locals 2

    .prologue
    .line 760
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 748
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    invoke-virtual {p0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1597
    iget-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mCandidateForNeedsLove:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v6, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-eq v1, v6, :cond_1

    iget-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mIsFollowing:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 1598
    invoke-static {v0}, Lakp;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1599
    iput-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    .line 1600
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v1, p0, Lakp;->mRecents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lakp;->mBests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    .line 1603
    :cond_6
    new-instance v0, Lbha;

    invoke-direct {v0}, Lbha;-><init>()V

    .line 1604
    invoke-virtual {v0, v4}, Lbha;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/snapchat/android/model/Friend;)V
    .locals 3

    .prologue
    .line 1522
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1523
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1525
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 870
    iget-object v0, p0, Lakp;->mMessagingGatewayInfo:Lbjl;

    invoke-virtual {v0, p1}, Lbjl;->a(Ljava/lang/String;)V

    .line 872
    invoke-static {}, Laul;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lakp;->mMessagingGatewayInfo:Lbjl;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lakp;->mSlightlySecurePreferences:Laze;

    sget-object v2, Lazh;->MESSAGING_GATEWAY_INFO:Lazf;

    invoke-virtual {v1, v2, v0}, Laze;->a(Lazf;Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdi;

    invoke-direct {v1}, Lbdi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 876
    return-void
.end method

.method public final e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x16

    .line 305
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 306
    iget-object v0, p0, Lakp;->mChatConversationManager:Lakx;

    invoke-virtual {v0}, Lakx;->f()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 308
    invoke-static {v0}, Layg;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 309
    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lakp;->a([Ljava/lang/String;Ljava/util/Set;)V

    .line 315
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 320
    :cond_1
    iget-object v4, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v4

    .line 321
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 322
    iget-object v6, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v0, v3}, Lakp;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 323
    add-int/lit8 v0, v1, 0x1

    .line 325
    :goto_2
    if-lt v0, v7, :cond_6

    .line 326
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 329
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 330
    :try_start_1
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 331
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 332
    invoke-direct {p0, v0, v3}, Lakp;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_3

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 311
    :cond_4
    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0, p0}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0, v3}, Lakp;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_0

    .line 326
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 336
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-direct {p0, v0}, Lakp;->d(Ljava/util/List;)V

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lakp;->mRecents:Ljava/util/List;

    monitor-enter v1

    .line 345
    :try_start_4
    iget-object v2, p0, Lakp;->mRecents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 346
    iget-object v2, p0, Lakp;->mRecents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 347
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_6
    move v1, v0

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public final e(Lcom/snapchat/android/model/Friend;)V
    .locals 3

    .prologue
    .line 1530
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1531
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1533
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 943
    iget-object v1, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 944
    :try_start_0
    iget-object v0, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 945
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 947
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 948
    iget-object v2, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 949
    monitor-exit v1

    .line 952
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lakp;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    new-instance v0, Lakp$3;

    invoke-direct {v0, p0}, Lakp$3;-><init>(Lakp;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lakp;->mBests:Ljava/util/List;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 427
    invoke-virtual {p0}, Lakp;->e()V

    .line 428
    invoke-direct {p0}, Lakp;->A()V

    .line 429
    return-void

    .line 426
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1537
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 1538
    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1539
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    goto :goto_0

    .line 1543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1632
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 1633
    invoke-virtual {p0, v0}, Lakp;->e(Lcom/snapchat/android/model/Friend;)V

    .line 1635
    invoke-virtual {p0}, Lakp;->q()Ljava/util/List;

    move-result-object v1

    .line 1636
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1637
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1638
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1639
    iput-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 1641
    :cond_0
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-static {v0, p1}, Lakp;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcp;

    invoke-direct {v1}, Lbcp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1642
    :cond_1
    invoke-virtual {p0, p1}, Lakp;->i(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {p0, p1}, Lakp;->h(Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lakk;->c(Ljava/lang/String;)V

    .line 1645
    invoke-static {p1}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 1646
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    .line 1647
    :cond_2
    return-void

    .line 1641
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final h()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 536
    .line 538
    invoke-virtual {p0}, Lakp;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 539
    invoke-direct {p0, v0, v2}, Lakp;->a(Lcom/snapchat/android/model/Friend;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lakp;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 542
    goto :goto_0

    .line 543
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lakp;->mRecents:Ljava/util/List;

    invoke-static {v0, p1}, Lakp;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 1661
    return-void
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    invoke-static {}, Lbal;->d()Z

    move-result v2

    .line 609
    iget-object v3, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 610
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 611
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 612
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 616
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    return-object v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    invoke-static {v0, p1}, Lakp;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 1666
    return-void
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 628
    invoke-virtual {p0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 629
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 630
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v3, :cond_0

    .line 631
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-nez v3, :cond_0

    .line 632
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 635
    return-object v1
.end method

.method public final k()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lakp;->mBests:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 645
    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 646
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 647
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 648
    invoke-static {v0}, Lauk;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
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

    .line 653
    return-object v1
.end method

.method public final l()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 659
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 660
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 661
    invoke-static {v0}, Lauk;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
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

    .line 666
    return-object v1
.end method

.method public final m()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    iget-object v1, p0, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 675
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakp;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v1, p0, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 696
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakp;->mContactsOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()Ljava/util/List;
    .locals 3
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 710
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()I
    .locals 4

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 721
    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v3, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v3, :cond_1

    .line 722
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 724
    goto :goto_0

    .line 725
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final q()Ljava/util/List;
    .locals 3
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    iget-object v1, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 825
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final r()Ljava/util/List;
    .locals 6
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 844
    iget-object v3, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 845
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 846
    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v5, :cond_0

    .line 847
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 854
    iget-object v3, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v3

    .line 855
    :try_start_2
    iget-object v0, p0, Lakp;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 856
    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 857
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 861
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 862
    return-object v1
.end method

.method public final s()Ljava/util/List;
    .locals 3
    .annotation build Lchc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 924
    iget-object v1, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 925
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakp;->mSuggestedFriends:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1012
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v2

    .line 1013
    if-nez v2, :cond_1

    .line 1029
    :cond_0
    :goto_0
    return v0

    .line 1016
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lbal;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1017
    goto :goto_0

    .line 1021
    :cond_2
    iget-wide v2, p0, Lakp;->mNextReplayAvailableRealtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-boolean v2, p0, Lakp;->mServerHasMostRecentReplayTime:Z

    if-eqz v2, :cond_0

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current_realtime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "next_replay_available_realtime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lakp;->mNextReplayAvailableRealtime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1028
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current_time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1029
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lakp;->mNextReplayAvailableRealtime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User [logged="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lakr;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lakr;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lakr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 3

    .prologue
    .line 1345
    iget-object v1, p0, Lakp;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1346
    :try_start_0
    iget-object v0, p0, Lakp;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1347
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->s()V

    goto :goto_0

    .line 1349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 1391
    invoke-virtual {p0}, Lakp;->w()V

    .line 1393
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdh;

    invoke-direct {v1}, Lbdh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1394
    return-void
.end method

.method public final w()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1399
    invoke-static {}, Lcom/snapchat/android/database/SharedPreferenceKey;->purge()V

    .line 1400
    sget-object v0, Lakp;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lakp$5;

    invoke-direct {v1, p0}, Lakp$5;-><init>(Lakp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1401
    invoke-static {}, Laxo;->b()V

    .line 1402
    iget-object v0, p0, Lakp;->mSlightlySecurePreferences:Laze;

    invoke-virtual {v0}, Laze;->c()V

    .line 1403
    invoke-static {}, Lzk;->b()V

    invoke-static {}, Lzm;->b()V

    invoke-static {}, Laki;->b()V

    invoke-static {}, Lakx;->d()V

    sput-object v2, Laoq;->a:Laoq;

    sput-object v2, Laot;->a:Laot;

    sput-object v2, Laov;->a:Laov;

    invoke-static {}, Laph;->b()V

    invoke-static {}, Lavm;->b()V

    invoke-static {}, Lavn;->e()V

    invoke-static {}, Lzb;->b()V

    invoke-static {}, Lzd;->b()V

    invoke-static {}, Lajx;->b()V

    .line 1404
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lavi$1;

    invoke-direct {v2, v0}, Lavi$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1405
    invoke-static {}, Laef;->a()Laef;

    move-result-object v0

    iget-object v1, v0, Laef;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Laef;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Laef;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Laef;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1406
    invoke-static {}, Ladw;->a()Ladw;

    move-result-object v0

    iget-object v0, v0, Ladw;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1408
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->b()V

    .line 1409
    invoke-static {}, Lnm;->a()Lnm;

    move-result-object v0

    iget-object v0, v0, Lnm;->mStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1410
    invoke-static {}, Lavw;->a()Lavw;

    move-result-object v0

    invoke-virtual {v0}, Lavw;->b()V

    .line 1411
    invoke-static {}, Lbgy;->a()Lbgy;

    move-result-object v0

    invoke-virtual {v0}, Lbgy;->b()V

    .line 1412
    invoke-static {}, Lbgt;->a()Lbgt;

    move-result-object v1

    iget-object v0, v1, Lbgt;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, v1, Lbgt;->mUrlRoutingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    iput-object v0, v1, Lbgt;->mSerializedUrlRoutingMap:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lbgt;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1415
    const/4 v0, 0x0

    invoke-static {v0}, Lakp;->a(Z)V

    .line 1416
    return-void

    .line 1412
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lbgt;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lakp;->a(Lakp$b;)V

    .line 1458
    return-void
.end method
