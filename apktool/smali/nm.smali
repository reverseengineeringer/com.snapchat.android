.class public final Lnm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lnm;


# instance fields
.field public mStreams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lni;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lnm;

    invoke-direct {v0}, Lnm;-><init>()V

    sput-object v0, Lnm;->INSTANCE:Lnm;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ldu;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lnm;->mStreams:Ljava/util/Map;

    .line 16
    return-void
.end method

.method public static a()Lnm;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lnm;->INSTANCE:Lnm;

    return-object v0
.end method


# virtual methods
.method public final a(Lnn;Lnl;)Lni;
    .locals 5

    .prologue
    .line 26
    invoke-virtual {p1}, Lnn;->a()Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v0, p0, Lnm;->mStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lni;

    invoke-direct {v0, p1, p2}, Lni;-><init>(Lnn;Lnl;)V

    .line 34
    :goto_0
    iget-object v2, p0, Lnm;->mStreams:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0

    .line 31
    :cond_0
    iget-object v0, p0, Lnm;->mStreams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lni;

    .line 32
    iget-object v2, v0, Lni;->mMutex:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, v0, Lni;->mInPlayback:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lni;->mInLiveSection:Z

    iput-object p1, v0, Lni;->mStoryAdStreamRequestInfo:Lnn;

    iget v3, p1, Lnn;->mFirstPosition:I

    iget v4, v0, Lni;->mNextUnviewedPosition:I

    if-le v3, v4, :cond_1

    iput v3, v0, Lni;->mNextUnviewedPosition:I

    :cond_1
    iput v3, v0, Lni;->mNextPosition:I

    iput-object p2, v0, Lni;->mStoryAdStreamListener:Lnl;

    const/4 v3, 0x0

    iput v3, v0, Lni;->mTimeBetweenRetriesMilliSeconds:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
