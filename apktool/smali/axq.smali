.class public final Laxq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laxe;
.implements Laxg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxq$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureChatSessionPinger"


# instance fields
.field final mInterface:Laxq$a;

.field final mPingIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPingIntervalMillis:J

.field private mPingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

.field private volatile mRunning:Z

.field final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final mTimeoutMillis:J


# direct methods
.method public constructor <init>(Laxq$a;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Laxq$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Laxq;->mPingIds:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Laxq;->mInterface:Laxq$a;

    .line 45
    iput-object p2, p0, Laxq;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Laxq;->mPingIntervalMillis:J

    .line 47
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Laxq;->mTimeoutMillis:J

    .line 48
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Laxq;->mPingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    iget-boolean v0, p0, Laxq;->mRunning:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lbii$a;->PING:Lbii$a;

    invoke-static {v0}, Lasz;->b(Lbii$a;)Lbii;

    move-result-object v0

    check-cast v0, Lbip;

    .line 84
    new-instance v1, Laxq$2;

    invoke-direct {v1, p0, v0}, Laxq$2;-><init>(Laxq;Lbip;)V

    .line 100
    iget-object v2, p0, Laxq;->mInterface:Laxq$a;

    invoke-interface {v2, v0, v1}, Laxq$a;->a(Lbii;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "SecureChatSessionPinger"

    const-string v1, "CHAT-LOG: Called writePingMessage but pinger not running!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lbii;)V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p1}, Lbii;->j()Lbii$a;

    move-result-object v0

    sget-object v1, Lbii$a;->PING_RESPONSE:Lbii$a;

    if-ne v0, v1, :cond_0

    .line 64
    const-string v0, "SecureChatSessionPinger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CHAT-LOG: RECEIVED: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    check-cast p1, Lbiq;

    .line 66
    iget-object v0, p0, Laxq;->mPingIds:Ljava/util/Set;

    invoke-virtual {p1}, Lbiq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Laxq;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Laxq$1;

    invoke-direct {v1, p0}, Laxq$1;-><init>(Laxq;)V

    iget-wide v2, p0, Laxq;->mPingIntervalMillis:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Laxq;->mPingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 69
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxq;->mRunning:Z

    .line 54
    invoke-virtual {p0}, Laxq;->a()V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxq;->mRunning:Z

    .line 57
    iget-object v0, p0, Laxq;->mPingIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method
