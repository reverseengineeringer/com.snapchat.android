.class public final Laym;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Layc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laym$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureChatSessionMessageRateLimiter"


# instance fields
.field final mMaxMessagesPerSecond:I

.field final mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mRateLimiterInterface:Laym$a;

.field volatile mRunning:Z

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Laym$a;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Laym;->mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    iput-boolean v1, p0, Laym;->mRunning:Z

    .line 32
    iput-object p1, p0, Laym;->mRateLimiterInterface:Laym$a;

    .line 33
    iput-object p2, p0, Laym;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    const/16 v0, 0x20

    iput v0, p0, Laym;->mMaxMessagesPerSecond:I

    .line 35
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 57
    iget-boolean v0, p0, Laym;->mRunning:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Laym;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Laym$1;

    invoke-direct {v1, p0}, Laym$1;-><init>(Laym;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 66
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->CONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_1

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Laym;->mRunning:Z

    .line 48
    iget-object v0, p0, Laym;->mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 49
    invoke-virtual {p0}, Laym;->a()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;->DISCONNECTED:Lcom/snapchat/android/util/chat/SecureChatSession$ConnectionState;

    if-ne p1, v0, :cond_0

    .line 51
    iput-boolean v1, p0, Laym;->mRunning:Z

    goto :goto_0
.end method
