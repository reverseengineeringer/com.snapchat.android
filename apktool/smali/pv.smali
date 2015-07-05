.class public final Lpv;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpv$b;,
        Lpv$a;
    }
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "/bq/ip_routing"


# instance fields
.field private final mGson:Lcom/google/gson/Gson;

.field final mUrlRoutingManager:Lbft;

.field private final mUserPrefs:Lajx;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lbft;->a()Lbft;

    move-result-object v0

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lpv;-><init>(Lbft;Lajx;Lcom/google/gson/Gson;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lbft;Lajx;Lcom/google/gson/Gson;)V
    .locals 0
    .param p1    # Lbft;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/google/gson/Gson;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Lth;-><init>()V

    .line 35
    iput-object p1, p0, Lpv;->mUrlRoutingManager:Lbft;

    .line 36
    iput-object p2, p0, Lpv;->mUserPrefs:Lajx;

    .line 37
    iput-object p3, p0, Lpv;->mGson:Lcom/google/gson/Gson;

    .line 38
    return-void
.end method

.method private static a(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/snapchat/android/api2/IpRoutingErrorTask;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/api2/IpRoutingErrorTask;-><init>(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/IpRoutingErrorTask;->f()V

    .line 86
    return-void
.end method


# virtual methods
.method public final a(Luc;)V
    .locals 3
    .param p1    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcaq;
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Luc;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p1, Luc;->mCaughtException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget v0, p1, Luc;->mResponseCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    sget-object v1, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->NETWORK_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    invoke-static {v1, v0}, Lpv;->a(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V

    .line 80
    :goto_1
    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Luc;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Luc;->e()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lpv$b;

    iget-object v2, p0, Lpv;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpv$b;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    iget-object v1, p0, Lpv;->mUrlRoutingManager:Lbft;

    iget-object v0, v0, Lpv$b;->serializedUrlRoutingMap:Ljava/lang/String;

    iget-object v2, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lbft;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lbft;->mUrlRoutingMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, v1, Lbft;->mUrlRoutingMap:Ljava/util/Map;

    invoke-static {v0}, Laty;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lbft;->mSerializedUrlRoutingMap:Ljava/lang/String;

    iget-object v0, v1, Lbft;->mSerializedUrlRoutingMap:Ljava/lang/String;

    invoke-static {v0}, Lajx;->t(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iget-object v0, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :goto_2
    sget-object v1, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->JSON_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lpv;->a(Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, v1, Lbft;->mUrlRoutingRWLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 76
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lpv$a;

    invoke-direct {v0, p0}, Lpv$a;-><init>(Lpv;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "/bq/ip_routing"

    return-object v0
.end method
