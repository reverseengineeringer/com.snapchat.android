.class public final Lajv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajv$b;,
        Lajv$a;
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
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field static sInstance:Lajv;

.field static final sUserSyncLock:Ljava/lang/Object;


# instance fields
.field private final mAddressBookUtils:Lass;

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

.field mCashProviderManager:Lqh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mChatConversationManager:Lakc;

.field private final mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

.field private final mClock:Lbgk;

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

.field private final mDevUtils:Lazm;

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

.field private final mIdentityUtils:Latr;

.field public mInitialized:Z

.field public mMessagingGatewayInfo:Lbil;

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

.field mSlightlySecurePreferences:Layg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mSnapchatServiceManager:Laol;

.field public mSnapsToBeUpdatedOnServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laje;",
            ">;"
        }
    .end annotation
.end field

.field public final mStoryLibrary:Lajq;

.field public final mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lajs;",
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

.field mUserDatabaseLoader:Lajw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mUserPrefs:Lajx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lajv;->sUserSyncLock:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lajv;->sContext:Landroid/content/Context;

    .line 116
    sget-object v0, Lauh;->SERIAL_EXECUTOR_FOR_SQL_WRITE_OPS:Ljava/util/concurrent/ExecutorService;

    sput-object v0, Lajv;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 222
    new-instance v0, Lajv$1;

    invoke-direct {v0}, Lajv$1;-><init>()V

    sput-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    .line 171
    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->a()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v1

    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v2

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v4

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    new-instance v6, Lbgk;

    invoke-direct {v6}, Lbgk;-><init>()V

    new-instance v7, Latr;

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-direct {v7, v0}, Latr;-><init>(Lajx;)V

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Laol;->a()Laol;

    move-result-object v10

    new-instance v11, Lass;

    invoke-direct {v11}, Lass;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lajv;-><init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lakc;Lajq;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lajx;Lbgk;Latr;Lazm;Ljava/util/List;Laol;Lass;)V

    .line 176
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;Lakc;Lajq;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lajx;Lbgk;Latr;Lazm;Ljava/util/List;Laol;Lass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;",
            "Lakc;",
            "Lajq;",
            "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;",
            "Lajx;",
            "Lbgk;",
            "Latr;",
            "Lazm;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Laol;",
            "Lass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lajv;->mNextReplayAvailableRealtime:J

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajv;->mServerHasMostRecentReplayTime:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lajv;->mMessagingGatewayInfo:Lbil;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mBests:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lajv;->mRecents:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mContactsNotOnSnapchat:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mContactsOnSnapchat:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lajv;->mContactsOnSnapchatSet:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lajv;->mFriendMap:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lajv;->mDuplicateFirstNames:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lajv;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lajv;->mStoryViewRecordsSinceLastServerChange:Ljava/util/Map;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lajv;->mInitialized:Z

    .line 182
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lajv;)V

    .line 183
    iput-object p1, p0, Lajv;->mChatsReceivedInLastHourTable:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    .line 184
    iput-object p2, p0, Lajv;->mChatConversationManager:Lakc;

    .line 185
    iput-object p3, p0, Lajv;->mStoryLibrary:Lajq;

    .line 186
    iput-object p4, p0, Lajv;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 187
    iput-object p5, p0, Lajv;->mUserPrefs:Lajx;

    .line 188
    iput-object p6, p0, Lajv;->mClock:Lbgk;

    .line 189
    iput-object p7, p0, Lajv;->mIdentityUtils:Latr;

    .line 190
    iput-object p8, p0, Lajv;->mDevUtils:Lazm;

    .line 191
    iput-object p9, p0, Lajv;->mFriends:Ljava/util/List;

    .line 192
    iput-object p10, p0, Lajv;->mSnapchatServiceManager:Laol;

    .line 193
    iput-object p11, p0, Lajv;->mAddressBookUtils:Lass;

    .line 194
    return-void
.end method

.method private A()V
    .locals 6

    .prologue
    .line 462
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 463
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 464
    iget-object v3, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 465
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 466
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v0

    .line 467
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 469
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 472
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

    .line 474
    iget-object v2, p0, Lajv;->mDuplicateFirstNames:Ljava/util/Set;

    monitor-enter v2

    .line 475
    :try_start_2
    iget-object v0, p0, Lajv;->mDuplicateFirstNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 476
    iget-object v0, p0, Lajv;->mDuplicateFirstNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 477
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lajv;
    .locals 5
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 198
    sget-object v0, Lajv;->sInstance:Lajv;

    if-eqz v0, :cond_0

    sget-object v0, Lajv;->sInstance:Lajv;

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lajv;->sInstance:Lajv;

    .line 215
    :goto_0
    return-object v0

    .line 201
    :cond_0
    sget-object v1, Lajv;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 204
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 205
    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v3, :cond_1

    .line 206
    const/4 v2, 0x4

    aget-object v0, v0, v2

    .line 207
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " called getInstance on the UI thread."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    sget-object v0, Lajv;->sInstance:Lajv;

    if-nez v0, :cond_3

    .line 213
    sget-object v0, Lajv;->sInstance:Lajv;

    if-nez v0, :cond_5

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_USER_INIT_DELAY:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    const-string v0, "User"

    const-string v2, "init - sleep 5 seconds for investigating potential ANR. To disable the delay,\n$ adb shell setprop debug.sc.user_init_delay FALSE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    :try_start_2
    const-string v0, "User"

    const-string v2, "qwert user is null. pulling from shared prefs"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lajv;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->c(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/snapchat/android/util/debug/ScApplicationInfo;->DEFAULT_VERSION_CODE:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lajv;->a(Z)V

    .line 215
    :cond_3
    :goto_2
    sget-object v0, Lajv;->sInstance:Lajv;

    monitor-exit v1

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 213
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lajv;->a(Z)V

    goto :goto_2

    :cond_5
    const-string v0, "User"

    const-string v2, "sInstance not null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private varargs a(Lajv$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 2

    .prologue
    .line 1462
    sget-object v0, Lajv;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lajv$6;

    invoke-direct {v1, p0, p2, p1}, Lajv$6;-><init>(Lajv;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;Lajv$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1470
    return-void
.end method

.method private static a(Z)V
    .locals 15

    .prologue
    .line 262
    new-instance v0, Lajv;

    invoke-direct {v0}, Lajv;-><init>()V

    sput-object v0, Lajv;->sInstance:Lajv;

    .line 263
    if-eqz p0, :cond_1

    .line 264
    sget-object v1, Lajv;->sInstance:Lajv;

    sget-object v2, Lajv;->sUserSyncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v0, "User"

    const-string v3, "Calling load user from database"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lajx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbep;

    invoke-direct {v1}, Lbep;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    sget-object v1, Lauh;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lpg;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v0, Lajv;->sInstance:Lajv;

    if-eqz v0, :cond_0

    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Laol;->a(ZZ)I

    :cond_0
    const-string v0, "User"

    const-string v1, "The user has been reset. Is logged in? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lajx;->m()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_1
    :goto_0
    sget-object v0, Lajv;->sInstance:Lajv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lajv;->mInitialized:Z

    .line 267
    return-void

    .line 264
    :cond_2
    :try_start_1
    const-string v0, "User"

    const-string v3, "User loaded from database with logged in value of %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lajx;->m()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lajv;->mSlightlySecurePreferences:Layg;

    sget-object v3, Layj;->MESSAGING_GATEWAY_INFO:Layh;

    invoke-virtual {v0, v3}, Layg;->a(Layh;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lbil;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbil;

    iput-object v0, v1, Lajv;->mMessagingGatewayInfo:Lbil;

    :cond_3
    iget-object v0, v1, Lajv;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v0}, Layg;->a()V

    iget-object v3, v1, Lajv;->mUserDatabaseLoader:Lajw;

    sget-object v4, Lajv;->sInstance:Lajv;

    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_5

    aget-object v7, v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-string v10, "UserDatabaseLoader"

    const-string v11, "Populating from %s table"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->getTable()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/snapchat/android/database/table/DbTable;->d(Lajv;)V

    iget-object v10, v3, Lajw;->mLifecycleAnalytics:Lnf;

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v8, v12, v8

    iget-object v11, v10, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v11, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    iget-object v11, v10, Lnf;->mUserLoadMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v11, v7, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, v10, Lnf;->mDidLoadFromDatabase:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lajv;->f()V

    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
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
    .line 391
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 392
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v2

    .line 393
    invoke-direct {p0, v2, p2}, Lajv;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    .line 394
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    .line 396
    :cond_0
    return-void

    .line 391
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
    .line 592
    iget-wide v0, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    invoke-static {}, Lajx;->j()J

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

    .line 400
    if-eqz p1, :cond_0

    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

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

    .line 421
    :goto_0
    return v0

    .line 405
    :cond_1
    invoke-static {p1}, Lajv;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 406
    iput-boolean v1, v3, Lcom/snapchat/android/model/Friend;->mIsRecent:Z

    .line 408
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 410
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

    .line 411
    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 412
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

    .line 414
    invoke-interface {p2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 416
    goto :goto_0

    :cond_4
    move v0, v2

    .line 421
    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 567
    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    if-nez v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 588
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 567
    goto :goto_0

    .line 572
    :cond_2
    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 573
    goto :goto_1

    .line 578
    :cond_3
    iget-object v2, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v3, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v2, v3, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz p2, :cond_0

    .line 583
    :cond_4
    invoke-static {p1}, Lajv;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 584
    goto :goto_1

    :cond_5
    move v2, v0

    .line 578
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
    .line 1663
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1664
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1665
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1666
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1670
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
    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 365
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    .line 366
    if-nez v2, :cond_0

    .line 367
    iget-wide v2, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iget-wide v6, v0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 372
    :goto_1
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 370
    :cond_0
    iget-wide v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mTimestamp:J

    goto :goto_1

    .line 376
    :cond_1
    new-instance v0, Lajv$2;

    invoke-direct {v0, p0, v1}, Lajv$2;-><init>(Lajv;Ljava/util/HashMap;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 867
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 868
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhu;

    .line 869
    iget-object v1, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v0}, Lbhu;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 870
    new-instance v4, Lcom/snapchat/android/model/Friend;

    invoke-direct {v4, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbhu;Lajv;)V

    .line 871
    if-eqz v1, :cond_0

    .line 872
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, v4, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 873
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 874
    iget-wide v6, v4, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iput-wide v6, v1, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 876
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0, v2}, Lajv;->a(Ljava/util/List;)V

    .line 880
    return-void
.end method

.method private static f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 4

    .prologue
    .line 491
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-wide v2, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 493
    iget-wide v2, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    iput-wide v2, v0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    .line 494
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    .line 495
    iget v1, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    iput v1, v0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    .line 496
    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 497
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    .line 498
    return-object v0
.end method

.method public static g()Lajv;
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lajv;->sInstance:Lajv;

    return-object v0
.end method

.method public static y()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1506
    sget-object v0, Lajv;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lajv;->sUserSyncLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a(Lbgx;Z)Lajv$a;
    .locals 12
    .param p1    # Lbgx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1145
    invoke-virtual {p1}, Lbgx;->d()Lbjp;

    move-result-object v0

    .line 1146
    invoke-virtual {p1}, Lbgx;->f()Lbhx;

    move-result-object v1

    .line 1147
    invoke-virtual {p1}, Lbgx;->g()Lbjf;

    move-result-object v2

    .line 1148
    invoke-virtual {p1}, Lbgx;->h()Ljava/util/List;

    move-result-object v3

    .line 1150
    invoke-virtual {p1}, Lbgx;->k()Lbki;

    move-result-object v4

    .line 1151
    invoke-virtual {p1}, Lbgx;->i()Lbho;

    move-result-object v5

    .line 1153
    invoke-virtual {p1}, Lbgx;->j()Lbhr;

    move-result-object v6

    .line 1154
    invoke-virtual {p1}, Lbgx;->b()Lbil;

    move-result-object v7

    .line 1156
    invoke-virtual {p0, v0, p2}, Lajv;->a(Lbjp;Z)Z

    move-result v8

    .line 1157
    invoke-virtual {p0, v1}, Lajv;->a(Lbhx;)Z

    move-result v9

    .line 1158
    invoke-virtual {p0, v2}, Lajv;->a(Lbjf;)Z

    move-result v10

    .line 1159
    invoke-virtual {p0, v3, v5, p2}, Lajv;->a(Ljava/util/List;Lbho;Z)Z

    move-result v11

    .line 1163
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lbki;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Lajx;->t(Z)V

    invoke-virtual {v4}, Lbki;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lajx;->u(Z)V

    invoke-virtual {v4}, Lbki;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajx;->u(Ljava/lang/String;)V

    invoke-virtual {v4}, Lbki;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lajx;->w(Z)V

    invoke-virtual {v4}, Lbki;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lajx;->e(I)V

    invoke-virtual {v4}, Lbki;->g()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lajx;->x(Z)V

    iget-object v0, p0, Lajv;->mSnapchatServiceManager:Laol;

    iget-object v1, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "op_code"

    const/16 v3, 0x409

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "action"

    sget-object v3, Lcom/snapchat/android/model/SuggestedFriendAction;->LIST:Lcom/snapchat/android/model/SuggestedFriendAction;

    invoke-virtual {v3}, Lcom/snapchat/android/model/SuggestedFriendAction;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    invoke-static {}, Lajx;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Latr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Latr;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Lajx;->bp()J

    move-result-wide v0

    invoke-virtual {v4}, Lbki;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lajx;->s(Z)V

    .line 1165
    :cond_1
    invoke-virtual {p0, v7}, Lajv;->a(Lbil;)V

    .line 1168
    if-eqz v6, :cond_5

    iget-object v0, p0, Lajv;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v6}, Lbhr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lbhr;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lbhr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lbhr;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lbhr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :goto_2
    if-eqz p2, :cond_2

    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajv;->mInitialized:Z

    .line 1174
    :cond_2
    new-instance v0, Lajv$a;

    invoke-direct {v0, v8, v9, v10, v11}, Lajv$a;-><init>(ZZZZ)V

    return-object v0

    .line 1163
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1168
    :cond_5
    iget-object v0, p0, Lajv;->mDiscoverEndpointManager:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

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
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    monitor-exit v1

    return-object v0

    .line 719
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
    .line 1568
    invoke-virtual {p0}, Lajv;->o()Ljava/util/List;

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
    .line 550
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 551
    invoke-virtual {p0}, Lajv;->q()Ljava/util/List;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 553
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 555
    :goto_0
    invoke-direct {p0, v0, v1}, Lajv;->a(Lcom/snapchat/android/model/Friend;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 559
    :cond_2
    return-object v2

    .line 553
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Laje;)V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lajv;->mSnapsToBeUpdatedOnServer:Ljava/util/Map;

    invoke-virtual {p1}, Laje;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    return-void
.end method

.method public final a(Lajv$b;)V
    .locals 6

    .prologue
    .line 1449
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 1450
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1451
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->ordinal()I

    move-result v5

    aput-object v4, v1, v5

    .line 1450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1453
    :cond_0
    invoke-direct {p0, p1, v1}, Lajv;->a(Lajv$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1454
    return-void
.end method

.method public final a(Lbil;)V
    .locals 3
    .param p1    # Lbil;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1321
    if-nez p1, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_0
    iput-object p1, p0, Lajv;->mMessagingGatewayInfo:Lbil;

    .line 1327
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lajv;->mSlightlySecurePreferences:Layg;

    sget-object v2, Layj;->MESSAGING_GATEWAY_INFO:Layh;

    invoke-virtual {v1, v2, v0}, Layg;->a(Layh;Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbci;

    invoke-direct {v1}, Lbci;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 1535
    invoke-virtual {p0, p1}, Lajv;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1536
    if-eqz v0, :cond_1

    .line 1537
    iput-boolean p2, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 1544
    :goto_0
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

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

    .line 1539
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 1540
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 1541
    invoke-virtual {p0, v0}, Lajv;->d(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 1544
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
    .line 884
    new-instance v0, Lajv$4;

    invoke-direct {v0, p0}, Lajv$4;-><init>(Lajv;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 894
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 895
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 896
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 897
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbp;

    invoke-direct {v1}, Lbbp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 899
    return-void

    .line 897
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
    .line 1457
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lajv;->a(Lajv$b;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1458
    return-void
.end method

.method public final a(Lbhx;)Z
    .locals 12
    .param p1    # Lbhx;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1098
    if-eqz p1, :cond_5

    .line 1099
    invoke-virtual {p1}, Lbhx;->a()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lbhx;->c()Ljava/util/List;

    move-result-object v4

    iget-object v2, p0, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

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
    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lajv;->mFriendMap:Ljava/util/Map;

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

    check-cast v0, Lbhu;

    move-object v3, v0

    invoke-virtual {v3}, Lbhu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lbhu;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajx;->g(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lbhu;->c()Lbhu$a;

    move-result-object v2

    sget-object v8, Lbhu$a;->DELETED:Lbhu$a;

    if-eq v2, v8, :cond_1

    new-instance v8, Lcom/snapchat/android/model/Friend;

    invoke-direct {v8, v3, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbhu;Lajv;)V

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v8, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

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

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->s()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    iput-object v2, v8, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    :cond_3
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->t()V

    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lbhu;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v3}, Lbhu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lajv;->f()V

    .line 1100
    invoke-virtual {p1}, Lbhx;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lajv;->e(Ljava/util/List;)V

    .line 1101
    const/4 v2, 0x1

    .line 1105
    :goto_2
    return v2

    .line 1104
    :cond_5
    invoke-virtual {p0}, Lajv;->u()V

    .line 1105
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final a(Lbjf;)Z
    .locals 12
    .param p1    # Lbjf;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1214
    if-eqz p1, :cond_c

    .line 1215
    invoke-virtual {p1}, Lbjf;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lbiw$a;->EQUAL:Lbiw$a;

    invoke-virtual {p1}, Lbjf;->g()Lbiw;

    move-result-object v4

    invoke-virtual {v4}, Lbiw;->e()Lbiw$a;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1217
    const-string v3, "User"

    const-string v4, "onSuccess - Story response is pruned"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    :goto_0
    return v2

    .line 1221
    :cond_0
    invoke-virtual {p1}, Lbjf;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lbjf;->g()Lbiw;

    move-result-object v2

    invoke-virtual {v2}, Lbiw;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    invoke-virtual {p1}, Lbjf;->g()Lbiw;

    move-result-object v2

    invoke-virtual {v2}, Lbiw;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lajx;->k(Ljava/lang/String;)V

    .line 1225
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    invoke-virtual {p1}, Lbjf;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1227
    invoke-virtual {p1}, Lbjf;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbji;

    .line 1228
    new-instance v5, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v5, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lbji;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1232
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1233
    invoke-virtual {p1}, Lbjf;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1234
    invoke-virtual {p1}, Lbjf;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbim;

    .line 1235
    new-instance v6, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v6, v2}, Lcom/snapchat/android/model/StoryGroup;-><init>(Lbim;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1239
    :cond_3
    iget-object v5, p0, Lajv;->mStoryLibrary:Lajq;

    iget-object v2, v5, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v6, v5, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v2, v5, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

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

    iget-object v8, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v9

    const-string v10, "my_story_ads79sdf"

    iget-object v11, v8, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lajn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lajr;->aE()V

    invoke-virtual {v5, v2}, Lajq;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    invoke-static {}, Lajb;->a()Lajb;

    move-result-object v2

    invoke-virtual {v2, v3}, Lajb;->a(Ljava/util/List;)V

    iget-object v3, v5, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v2}, Lajb;->c()Ljava/lang/String;

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

    iget-object v2, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v8

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lajr;->mClientId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lajn;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lajr;->aE()V

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lajq;->b(Ljava/util/List;)V

    iget-object v2, v5, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Loo;

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Loo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Loo;->f()V

    goto :goto_4

    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v2

    invoke-virtual {v2}, Lajn;->c()Ljava/util/HashMap;

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

    check-cast v2, Laim;

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

    check-cast v2, Laim;

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v4

    invoke-virtual {v4, v2}, Lajn;->b(Laim;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v5}, Lajq;->j()V

    .line 1240
    invoke-virtual {p1}, Lbjf;->f()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v2

    .line 1241
    iget-object v3, p0, Lajv;->mStoryLibrary:Lajq;

    invoke-virtual {p1}, Lbjf;->c()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lajq;->a(Ljava/util/List;Z)V

    .line 1242
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_c
    iget-object v3, p0, Lajv;->mStoryLibrary:Lajq;

    invoke-virtual {v3}, Lajq;->h()V

    goto/16 :goto_0
.end method

.method public final a(Lbjp;Z)Z
    .locals 9
    .param p1    # Lbjp;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 1028
    if-nez p1, :cond_0

    .line 1029
    const/4 v0, 0x0

    .line 1088
    :goto_0
    return v0

    .line 1032
    :cond_0
    invoke-virtual {p1}, Lbjp;->R()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    sget-object v1, Lajv;->sContext:Landroid/content/Context;

    invoke-static {}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lajx;->Z()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lajx;->ad()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lajx;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v2, v4

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_a

    :cond_2
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laol;->a(Landroid/content/Context;ZZ)I

    .line 1034
    :cond_3
    :goto_4
    invoke-static {p1}, Lajx;->b(Lbjp;)V

    .line 1036
    invoke-virtual {p1}, Lbjp;->B()Ljava/util/List;

    move-result-object v0

    .line 1037
    if-eqz v0, :cond_4

    .line 1038
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1040
    :cond_4
    invoke-virtual {p1}, Lbjp;->E()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-virtual {p1}, Lbjp;->D()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v6, "User"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "last_replayed_snap_timestamp: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "User"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "current_timestamp: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v0, v1, :cond_b

    :cond_5
    const-wide/16 v0, -0x1

    :goto_5
    iput-wide v0, p0, Lajv;->mNextReplayAvailableRealtime:J

    .line 1045
    invoke-virtual {p1}, Lbjp;->T()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p1}, Lbjp;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbjp;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbjp;->W()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbjp;->X()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lajx;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1053
    invoke-virtual {p1}, Lbjp;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lbjp;->M()Ljava/lang/String;

    move-result-object v0

    .line 1055
    :goto_6
    invoke-virtual {p1}, Lbjp;->N()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lbjp;->N()Ljava/lang/String;

    move-result-object v1

    .line 1057
    :goto_7
    invoke-virtual {p1}, Lbjp;->L()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Lbjp;->L()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1059
    :goto_8
    invoke-virtual {p1}, Lbjp;->O()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lajx;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    if-eqz p2, :cond_6

    .line 1065
    invoke-static {}, Lajx;->aq()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->OK:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v1, v2, :cond_6

    invoke-static {}, Lajx;->T()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lajx;->au()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1067
    iget-object v1, p0, Lajv;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1069
    iget-object v1, p0, Lajv;->mCashProviderManager:Lqh;

    invoke-virtual {v1, v0}, Lqh;->a(Ljava/lang/String;)Lqo;

    move-result-object v0

    invoke-interface {v0}, Lqo;->a()V

    .line 1076
    :cond_6
    :goto_9
    invoke-virtual {p1}, Lbjp;->Z()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1077
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    invoke-virtual {p1}, Lbjp;->Z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbin;

    .line 1079
    new-instance v3, Lajc;

    invoke-direct {v3, v0}, Lajc;-><init>(Lbin;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1032
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Laol;->a(Landroid/content/Context;ZZ)I

    goto/16 :goto_4

    .line 1040
    :cond_b
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_c

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    add-long/2addr v0, v2

    goto/16 :goto_5

    :cond_c
    const-wide/16 v0, 0x0

    goto/16 :goto_5

    .line 1053
    :cond_d
    const-string v0, "SQUARE"

    goto/16 :goto_6

    .line 1055
    :cond_e
    invoke-virtual {p1}, Lbjp;->n()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    .line 1057
    :cond_f
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 1071
    :cond_10
    invoke-static {}, Lajx;->ai()V

    goto/16 :goto_9

    .line 1081
    :cond_11
    iget-object v0, p0, Lajv;->mStoryLibrary:Lajq;

    invoke-virtual {v0, v1}, Lajq;->a(Ljava/util/List;)V

    .line 1085
    :cond_12
    invoke-virtual {p1}, Lbjp;->ac()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Lajx;->v(Z)V

    .line 1087
    iget-object v0, p0, Lajv;->mSnapchatServiceManager:Laol;

    invoke-virtual {p1}, Lbjp;->ad()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laol;->a(Ljava/util/List;)I

    .line 1088
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Lbho;Z)Z
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Lbho;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhd;",
            ">;",
            "Lbho;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1191
    if-nez p1, :cond_0

    .line 1203
    :goto_0
    return v0

    .line 1195
    :cond_0
    if-eqz p2, :cond_1

    .line 1196
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Updating conversations with isDelta = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbho;->a()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    :cond_1
    const-string v2, "User"

    const-string v3, "CHAT-LOG: ALL UPDATES conversations_response: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {v2, v1, v0, v3, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    iget-object v0, p0, Lajv;->mChatConversationManager:Lakc;

    invoke-virtual {v0, p1, v1, v1, p3}, Lakc;->a(Ljava/util/List;ZZZ)V

    move v0, v1

    .line 1203
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;
    .locals 4
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 724
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 726
    iget-object v3, v0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 727
    monitor-exit v1

    .line 731
    :goto_0
    return-object v0

    .line 730
    :cond_1
    monitor-exit v1

    .line 731
    const/4 v0, 0x0

    goto :goto_0

    .line 730
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
    .line 1573
    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

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
    .line 917
    iget-object v1, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-object v0, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 919
    iget-object v0, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 920
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
    .line 741
    iget-object v1, p0, Lajv;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 742
    :try_start_0
    iget-object v0, p0, Lajv;->mContactsOnSnapchatSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 743
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
    .line 1578
    iget-object v0, p0, Lajv;->mRecents:Ljava/util/List;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1292
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1297
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

    check-cast v0, Lbhu;

    .line 1299
    invoke-virtual {v0}, Lbhu;->c()Lbhu$a;

    move-result-object v3

    sget-object v4, Lbhu$a;->DELETED:Lbhu$a;

    if-eq v3, v4, :cond_2

    .line 1301
    new-instance v3, Lcom/snapchat/android/model/Friend;

    invoke-direct {v3, v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Lbhu;Lajv;)V

    .line 1304
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->t()V

    .line 1306
    iget-object v4, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1307
    iget-object v4, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    iget-object v4, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    invoke-virtual {v0}, Lbhu;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1311
    iget-object v3, p0, Lajv;->mFriendsBlockedFromSeeingMyStory:Ljava/util/List;

    invoke-virtual {v0}, Lbhu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1315
    :cond_3
    :try_start_1
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1316
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final c(Lcom/snapchat/android/model/Friend;)Z
    .locals 2

    .prologue
    .line 747
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 748
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 749
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
    .line 735
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 736
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 737
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

    .line 1583
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    invoke-virtual {p0}, Lajv;->o()Ljava/util/List;

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

    .line 1585
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

    .line 1586
    invoke-static {v0}, Lajv;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1587
    iput-boolean v2, v0, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    .line 1588
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1585
    :cond_2
    iget-object v1, p0, Lajv;->mRecents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lajv;->mBests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_1

    .line 1591
    :cond_6
    new-instance v0, Lbga;

    invoke-direct {v0}, Lbga;-><init>()V

    .line 1592
    invoke-virtual {v0, v4}, Lbga;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/snapchat/android/model/Friend;)V
    .locals 3

    .prologue
    .line 1510
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1511
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1513
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
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
    .line 857
    iget-object v0, p0, Lajv;->mMessagingGatewayInfo:Lbil;

    invoke-virtual {v0, p1}, Lbil;->a(Ljava/lang/String;)V

    .line 859
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lajv;->mMessagingGatewayInfo:Lbil;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 860
    iget-object v1, p0, Lajv;->mSlightlySecurePreferences:Layg;

    sget-object v2, Layj;->MESSAGING_GATEWAY_INFO:Layh;

    invoke-virtual {v1, v2, v0}, Layg;->a(Layh;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbci;

    invoke-direct {v1}, Lbci;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 863
    return-void
.end method

.method public final e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x16

    .line 304
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 305
    iget-object v0, p0, Lajv;->mChatConversationManager:Lakc;

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 307
    invoke-static {v0}, Laxi;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 308
    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lajv;->a([Ljava/lang/String;Ljava/util/Set;)V

    .line 314
    :goto_0
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, v7, :cond_0

    .line 319
    :cond_1
    iget-object v4, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v4

    .line 320
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

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

    .line 321
    iget-object v6, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v0, v3}, Lajv;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 322
    add-int/lit8 v0, v1, 0x1

    .line 324
    :goto_2
    if-lt v0, v7, :cond_6

    .line 325
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 329
    :try_start_1
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 330
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 331
    invoke-direct {p0, v0, v3}, Lajv;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_3

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 310
    :cond_4
    iget-object v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    invoke-static {v0, p0}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 311
    invoke-direct {p0, v0, v3}, Lajv;->a(Lcom/snapchat/android/model/Friend;Ljava/util/Set;)Z

    goto :goto_0

    .line 325
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 335
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    invoke-direct {p0, v0}, Lajv;->d(Ljava/util/List;)V

    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lajv;->mRecents:Ljava/util/List;

    monitor-enter v1

    .line 344
    :try_start_4
    iget-object v2, p0, Lajv;->mRecents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 345
    iget-object v2, p0, Lajv;->mRecents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
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
    .line 1518
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1519
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1521
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
    .line 930
    iget-object v1, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 931
    :try_start_0
    iget-object v0, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 932
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 934
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    iget-object v2, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v1

    .line 939
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
    .line 425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lajv;->f(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

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

    new-instance v0, Lajv$3;

    invoke-direct {v0, p0}, Lajv$3;-><init>(Lajv;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lajv;->mBests:Ljava/util/List;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    invoke-virtual {p0}, Lajv;->e()V

    .line 427
    invoke-direct {p0}, Lajv;->A()V

    .line 428
    return-void

    .line 425
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
    .line 1525
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 1526
    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

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

    .line 1527
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1528
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    goto :goto_0

    .line 1531
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

    .line 1620
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0, v0}, Lajv;->e(Lcom/snapchat/android/model/Friend;)V

    .line 1623
    invoke-virtual {p0}, Lajv;->q()Ljava/util/List;

    move-result-object v1

    .line 1624
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1625
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1626
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1627
    iput-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 1629
    :cond_0
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-static {v0, p1}, Lajv;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbp;

    invoke-direct {v1}, Lbbp;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1630
    :cond_1
    invoke-virtual {p0, p1}, Lajv;->i(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0, p1}, Lajv;->h(Ljava/lang/String;)V

    .line 1632
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lajq;->c(Ljava/lang/String;)V

    .line 1633
    invoke-static {p1}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 1634
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Z)V

    .line 1635
    :cond_2
    return-void

    .line 1629
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

    .line 535
    .line 537
    invoke-virtual {p0}, Lajv;->q()Ljava/util/List;

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

    .line 538
    invoke-direct {p0, v0, v2}, Lajv;->a(Lcom/snapchat/android/model/Friend;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lajv;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 541
    goto :goto_0

    .line 542
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lajv;->mRecents:Ljava/util/List;

    invoke-static {v0, p1}, Lajv;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 1649
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
    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-static {}, Lazm;->d()Z

    move-result v2

    .line 606
    iget-object v3, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 607
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 609
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 613
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
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

    .line 620
    return-object v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

    invoke-static {v0, p1}, Lajv;->a(Ljava/util/List;Ljava/lang/String;)Z

    .line 1654
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
    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    invoke-virtual {p0}, Lajv;->o()Ljava/util/List;

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

    .line 626
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 627
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-nez v3, :cond_0

    .line 628
    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-nez v3, :cond_0

    .line 629
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 632
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
    .line 641
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lajv;->mBests:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 642
    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 644
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 645
    invoke-static {v0}, Latm;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
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

    .line 650
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
    .line 654
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v2

    .line 656
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 657
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 658
    invoke-static {v0}, Latm;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 659
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
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

    .line 663
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
    .line 671
    iget-object v1, p0, Lajv;->mContactsNotOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 672
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajv;->mContactsNotOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 673
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
    .line 692
    iget-object v1, p0, Lajv;->mContactsOnSnapchat:Ljava/util/List;

    monitor-enter v1

    .line 693
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajv;->mContactsOnSnapchat:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()Ljava/util/List;
    .locals 3
    .annotation build Lcgb;
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
    .line 706
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 707
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q()Ljava/util/List;
    .locals 3
    .annotation build Lcgb;
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
    .line 811
    iget-object v1, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v1

    .line 812
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 813
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final r()Ljava/util/List;
    .locals 6
    .annotation build Lcgb;
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
    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 831
    iget-object v3, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v3

    .line 832
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

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

    .line 833
    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v5, :cond_0

    .line 834
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 838
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

    .line 841
    iget-object v3, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

    monitor-enter v3

    .line 842
    :try_start_2
    iget-object v0, p0, Lajv;->mFriendsWhoAddedMe:Ljava/util/List;

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

    .line 843
    iget-boolean v5, v0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    if-eqz v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 844
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 848
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

    .line 849
    return-object v1
.end method

.method public final s()Ljava/util/List;
    .locals 3
    .annotation build Lcgb;
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
    .line 911
    iget-object v1, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    monitor-enter v1

    .line 912
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajv;->mSuggestedFriends:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 913
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

    .line 999
    invoke-static {}, Lajx;->aa()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return v0

    .line 1000
    :cond_1
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    .line 1001
    if-eqz v2, :cond_0

    .line 1004
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lazm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1005
    goto :goto_0

    .line 1009
    :cond_2
    iget-wide v2, p0, Lajv;->mNextReplayAvailableRealtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lajv;->mServerHasMostRecentReplayTime:Z

    if-nez v2, :cond_4

    .line 1010
    :cond_3
    const-string v1, "User"

    const-string v2, "hasReplay: haven\'t synced with server since boot or replay"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1014
    :cond_4
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current_realtime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "next_replay_available_realtime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lajv;->mNextReplayAvailableRealtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1016
    const-string v2, "User"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current_time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lajv;->mNextReplayAvailableRealtime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User [logged="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lajx;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lajx;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lajx;->e()Ljava/lang/String;

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
    .line 1333
    iget-object v1, p0, Lajv;->mFriends:Ljava/util/List;

    monitor-enter v1

    .line 1334
    :try_start_0
    iget-object v0, p0, Lajv;->mFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 1335
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->t()V

    goto :goto_0

    .line 1337
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
    .locals 3

    .prologue
    .line 1379
    const-string v0, "User"

    const-string v1, "DB-LOG: User#logout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    invoke-virtual {p0}, Lajv;->w()V

    .line 1381
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbch;

    invoke-direct {v1}, Lbch;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1382
    return-void
.end method

.method public final w()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1387
    invoke-static {}, Lcom/snapchat/android/database/SharedPreferenceKey;->purge()V

    .line 1388
    const-string v0, "User"

    const-string v1, "DB-LOG: User#clearDatabase"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lajv;->DB_WRITE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lajv$5;

    invoke-direct {v1, p0}, Lajv$5;-><init>(Lajv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1389
    invoke-static {}, Lawq;->b()V

    .line 1390
    iget-object v0, p0, Lajv;->mSlightlySecurePreferences:Layg;

    invoke-virtual {v0}, Layg;->c()V

    .line 1391
    invoke-static {}, Lyo;->b()V

    invoke-static {}, Lyq;->b()V

    invoke-static {}, Lajn;->b()V

    invoke-static {}, Lakc;->c()V

    sput-object v3, Lant;->a:Lant;

    sput-object v3, Lanw;->a:Lanw;

    sput-object v3, Lany;->a:Lany;

    invoke-static {}, Laol;->b()V

    invoke-static {}, Lauo;->b()V

    invoke-static {}, Laup;->e()V

    invoke-static {}, Lyf;->b()V

    invoke-static {}, Lyh;->b()V

    invoke-static {}, Lajb;->b()V

    .line 1392
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lauk$1;

    invoke-direct {v2, v0}, Lauk$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1393
    invoke-static {}, Ladf;->a()Ladf;

    move-result-object v0

    iget-object v1, v0, Ladf;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Ladf;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, v0, Ladf;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v0, v0, Ladf;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1394
    invoke-static {}, Lacw;->a()Lacw;

    move-result-object v0

    iget-object v0, v0, Lacw;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1396
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->b()V

    .line 1397
    invoke-static {}, Lmv;->a()Lmv;

    move-result-object v0

    iget-object v0, v0, Lmv;->mStreams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1398
    invoke-static {}, Lauy;->a()Lauy;

    move-result-object v0

    invoke-virtual {v0}, Lauy;->b()V

    .line 1399
    invoke-static {}, Lbfy;->a()Lbfy;

    move-result-object v0

    invoke-virtual {v0}, Lbfy;->b()V

    .line 1400
    invoke-static {}, Lbft;->a()Lbft;

    move-result-object v1

    iget-object v0, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, v1, Lbft;->mUrlRoutingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    iput-object v0, v1, Lbft;->mSerializedUrlRoutingMap:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1403
    invoke-static {v4}, Lajv;->a(Z)V

    .line 1404
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lajv;->a(Lajv$b;)V

    .line 1446
    return-void
.end method
