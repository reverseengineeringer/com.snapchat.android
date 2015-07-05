.class public final Lcom/snapchat/android/util/chat/SecureChatSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxh;
.implements Laxo$a;
.implements Laxq$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/chat/SecureChatSession$a;,
        Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;,
        Lcom/snapchat/android/util/chat/SecureChatSession$b;
    }
.end annotation


# static fields
.field private static final ALTERNATIVE_SERVER_BACKOFF_DELAY:I = 0x1388

.field public static final CHAT_SCCP_TIMEOUT_MILLIS:I = 0x4e20

.field private static final CONNECTION_SOFT_TIMEOUT_MILLIS:I = 0xbb8

.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x2710

.field private static final EXPORT:Ljava/lang/String; = "EXPORT"

.field private static final FIFTEEN_SECONDS:J = 0x3a98L

.field private static final LOGGING_REJECTED_EXECUTION_HANDLER:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final MAX_MESSAGES_CAN_RECEIVE_PER_SEC:I = 0x20

.field private static final MAX_RECONNECT_ATTEMPTS:I = 0xa

.field private static final NUM_ALTERNATIVE_SERVERS_BEFORE_BACKOFF:I = 0x2

.field private static final NUM_SECONDS_BEFORE_SCCP_RECONNECT:I = 0x3c

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final PING_INTERVAL:J = 0x3a98L

.field private static final PING_TIMEOUT_MILLIS:J = 0x2710L

.field private static final PREFERRED_CIPHER_SUITES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecureChatSession"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final THIRTY_SECONDS:J = 0x7530L

.field private static final THREE_SECONDS:J = 0xbb8L


# instance fields
.field private volatile mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

.field mConnectionStartedTimestamp:J

.field volatile mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

.field private final mConnectionStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laxe;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mGson:Lato;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInputStream:Laxk;

.field final mInputThread:Laxn;

.field private volatile mIntendedConnectionState$7133d94d:I

.field private mNumReconnectAttempts:I

.field private mNumWrongServers:I

.field private mOutputStream:Laxl;

.field final mOutputThread:Laxp;

.field private mReconnectOutstanding:Z

.field private mSSLSocket:Ljavax/net/ssl/SSLSocket;

.field final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mStreamProcessingStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession;->PREFERRED_CIPHER_SUITES:[Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/snapchat/android/util/chat/SecureChatSession$1;

    invoke-direct {v0}, Lcom/snapchat/android/util/chat/SecureChatSession$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/chat/SecureChatSession;->LOGGING_REJECTED_EXECUTION_HANDLER:Ljava/util/concurrent/RejectedExecutionHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumWrongServers:I

    .line 120
    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    .line 121
    iput-boolean v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mReconnectOutstanding:Z

    .line 131
    sget v0, Lcom/snapchat/android/util/chat/SecureChatSession$b;->DISCONNECTED$7133d94d:I

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mIntendedConnectionState$7133d94d:I

    .line 133
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mStreamProcessingStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStateListeners:Ljava/util/List;

    .line 141
    iput-wide v4, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStartedTimestamp:J

    .line 144
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    .line 146
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mContext:Landroid/content/Context;

    .line 149
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v8, Lcom/snapchat/android/util/chat/SecureChatSession;->LOGGING_REJECTED_EXECUTION_HANDLER:Ljava/util/concurrent/RejectedExecutionHandler;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 151
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession;->LOGGING_REJECTED_EXECUTION_HANDLER:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 152
    new-instance v0, Laxm;

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1}, Laxm;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 154
    new-instance v1, Laxo;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, p0, v2}, Laxo;-><init>(Laxo$a;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 156
    new-instance v2, Laxn;

    invoke-direct {v2, v1}, Laxn;-><init>(Laxo;)V

    iput-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    .line 157
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    iget-object v2, v2, Laxn;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    invoke-virtual {v2, v0}, Laxn;->a(Laxg;)V

    .line 159
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    invoke-virtual {v2}, Laxn;->start()V

    .line 160
    new-instance v2, Laxp;

    invoke-direct {v2, v0}, Laxp;-><init>(Laxm;)V

    iput-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    iget-object v0, v0, Laxp;->mStreamProcessingStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    invoke-virtual {v0}, Laxp;->start()V

    .line 164
    new-instance v0, Laxq;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v2}, Laxq;-><init>(Laxq$a;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 166
    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    invoke-virtual {v2, v0}, Laxn;->a(Laxg;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Laxe;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Laxe;)V

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mIntendedConnectionState$7133d94d:I

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;J)J
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStartedTimestamp:J

    return-wide p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Laxk;)Laxk;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputStream:Laxk;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Laxl;)Laxl;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputStream:Laxl;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object p1
.end method

.method private a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-eq v0, p1, :cond_0

    .line 353
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SecureChatSession SET CONNECTION STATE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxe;

    .line 356
    invoke-interface {v0, p1}, Laxe;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    goto :goto_0

    .line 359
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lbiv;)V
    .locals 6

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbiv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lbiv;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureChatSession"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CHAT-LOG: SecureChatSession setAlternativeServer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumWrongServers:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/snapchat/android/util/chat/SecureChatSession$4;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession$4;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;Ljava/lang/String;)V

    const-wide/16 v4, 0x1388

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lajv;->a(Landroid/content/Context;)Lajv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lajv;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/util/chat/SecureChatSession;Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    return-void
.end method

.method protected static a(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 377
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 378
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 379
    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 380
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EXPORT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 381
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/chat/SecureChatSession;)Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession resetSessionState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputStream:Laxl;

    invoke-static {v0}, Lbfo;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputStream:Laxk;

    invoke-static {v0}, Lbfo;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lbfo;->a(Ljava/net/Socket;)V

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    invoke-virtual {v0}, Laxp;->interrupt()V

    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    invoke-virtual {v0}, Laxn;->interrupt()V

    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputStream:Laxk;

    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputStream:Laxl;

    iput-object v3, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/chat/SecureChatSession;->a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->h()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/util/chat/SecureChatSession;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/util/chat/SecureChatSession;)V
    .locals 5

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mReconnectOutstanding:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mReconnectOutstanding:Z

    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/snapchat/android/util/chat/SecureChatSession$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$3;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, 0x7530

    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->X()V

    :cond_0
    return-void

    :pswitch_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :pswitch_1
    const-wide/16 v0, 0xbb8

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x2710

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic g(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method static synthetic g()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession;->PREFERRED_CIPHER_SUITES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/util/chat/SecureChatSession;)Laxl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputStream:Laxl;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/util/chat/SecureChatSession$a;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mStreamProcessingStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/util/chat/SecureChatSession;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mReconnectOutstanding:Z

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/util/chat/SecureChatSession;)Laxk;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputStream:Laxk;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/util/chat/SecureChatSession;)Laxn;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mInputThread:Laxn;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/util/chat/SecureChatSession;)Laxp;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/util/chat/SecureChatSession;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    return v0
.end method

.method static synthetic r(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumReconnectAttempts:I

    return v0
.end method

.method static synthetic s(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumWrongServers:I

    return v0
.end method

.method static synthetic t(Lcom/snapchat/android/util/chat/SecureChatSession;)I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumWrongServers:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mNumWrongServers:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 309
    return-void
.end method

.method public final a(Laxe;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public final a(Lbii;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-virtual {p1}, Lbii;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbii;->j()Lbii$a;

    move-result-object v0

    sget-object v1, Lbii$a;->UNRECOGNIZED_VALUE:Lbii$a;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeMessage - The message has no valid id/type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureChatSession"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mOutputThread:Laxp;

    const-string v1, "SecureChatSessionOutputThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CHAT-LOG: SecureChatSessionOutputThread writeMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Laxp;->mThreadState:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Laxp;->mThreadState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Laxp$a;->CONNECTED:Laxp$a;

    if-ne v2, v3, :cond_4

    iget-object v2, v0, Laxp;->mAckTracker:Laxm;

    instance-of v3, p1, Lbhl;

    if-eqz v3, :cond_3

    invoke-static {p1}, Lasz;->b(Lbii;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Laxm;->mMessageCallbacksPendingAcks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lbii;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lbii;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Laxm;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Laxm$1;

    invoke-direct {v5, v2, v3}, Laxm$1;-><init>(Laxm;Ljava/lang/String;)V

    iget-wide v2, v2, Laxm;->mTimeoutInMillis:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v2, v3, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    iget-object v2, v0, Laxp;->mMessageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, v0, Laxp;->mAckTracker:Laxm;

    invoke-virtual {p1}, Lbii;->k()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_MESSAGE_QUEUE_FULL:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v4, "Couldn\'t add message to output message queue"

    invoke-virtual {v0, v2, v3, v4}, Laxm;->a(Ljava/lang/String;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :cond_3
    iget-object v2, v2, Laxm;->mMessageCallbacksPendingWrite:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lbii;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    sget-object v2, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;->SCCP_CONNECTION_ENDED:Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;

    const-string v3, "Output stream not connected"

    invoke-interface {p2, v0, v2, v3}, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;->a(ZLcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 313
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SecureChatSession onStreamProcessingStopped with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mStreamProcessingStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$5;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 323
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 173
    const-string v0, "SecureChatSession"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: SecureChatSession CONNECT on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget v0, Lcom/snapchat/android/util/chat/SecureChatSession$b;->CONNECTED$7133d94d:I

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mIntendedConnectionState$7133d94d:I

    .line 175
    invoke-direct {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->h()V

    .line 176
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 179
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECT"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    sget v0, Lcom/snapchat/android/util/chat/SecureChatSession$b;->DISCONNECTED$7133d94d:I

    iput v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mIntendedConnectionState$7133d94d:I

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$2;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mConnectionState:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    sget-object v1, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 327
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECTING because receiving rate limit hit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$6;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    const-wide/16 v2, 0x3c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 336
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 340
    const-string v0, "SecureChatSession"

    const-string v1, "CHAT-LOG: SecureChatSession DISCONNECTING because of ping timeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/snapchat/android/util/chat/SecureChatSession;->c()V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatSession;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/snapchat/android/util/chat/SecureChatSession$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/chat/SecureChatSession$7;-><init>(Lcom/snapchat/android/util/chat/SecureChatSession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method
