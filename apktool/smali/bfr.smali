.class public final Lbfr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfr$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_BASE_HOST:Ljava/lang/String; = "feelinsonice-hrd.appspot.com"

.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://feelinsonice-hrd.appspot.com"

.field protected static final DEFAULT_DIRECTORY_URL:Ljava/lang/String; = "https://list.suproo.com"

.field private static DEFAULT_ENDPOINT_SET:Lair; = null

.field protected static DEFAULT_PROXY_ENDPOINT:Lajd; = null

.field private static final ENABLED:Z = false

.field public static final PINNED_ENDPOINT:Ljava/lang/String; = "https://app.snapchat.com"

.field public static final SNAPCHAT_SQUARE_SANDBOX_URL:Ljava/lang/String; = "https://cash-dot-feelinsonice-hrd.appspot.com"

.field private static final SQUARE_BASE_URL:Ljava/lang/String; = "https://cash.square.com"

.field private static final SQUARE_SANDBOX_URL:Ljava/lang/String; = "https://cash.square-sandbox.com"

.field private static final SQUARE_URL:Ljava/lang/String; = "https://sc-connect.squareup.com"

.field private static final USING_CACHES:Z = true

.field private static final VALID_URL_ENDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lbfr;


# instance fields
.field private mEndpointSet:Lair;

.field private mLastPingResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lajd;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRefreshTime:J

.field private mPingStartTime:J

.field public mProxyEndpoint:Lajd;

.field private mProxyEndpointsToPingTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lajd;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestsFinished:I

.field private mTempEndpointSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "snapchat.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suproo.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "feelinsonice-hrd.appspot.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "addlive.io"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbfr;->VALID_URL_ENDINGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbfr;->mTempEndpointSets:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbfr;->mProxyEndpointsToPingTimes:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "https://cnc.addlive.io"

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "https://test.suproo.com/proxy/cnc"

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lajd;

    const-string v4, "https://feelinsonice-hrd.appspot.com"

    const-string v5, "https://feelinsonice-hrd.appspot.com"

    invoke-direct {v3, v4, v5, v0, v6}, Lajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    new-instance v0, Lajd;

    const-string v4, "https://test.suproo.com"

    const-string v5, "https://test.suproo.com"

    invoke-direct {v0, v4, v5, v2, v7}, Lajd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v4, v4, [Lajd;

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "https://list.suproo.com"

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lair;

    invoke-direct {v4, v2, v0}, Lair;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v4, Lbfr;->DEFAULT_ENDPOINT_SET:Lair;

    sput-object v3, Lbfr;->DEFAULT_PROXY_ENDPOINT:Lajd;

    .line 76
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ENDPOINT_SET:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lair;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lair;

    :goto_0
    iput-object v0, p0, Lbfr;->mEndpointSet:Lair;

    .line 77
    iget-object v0, p0, Lbfr;->mEndpointSet:Lair;

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lbfr;->DEFAULT_ENDPOINT_SET:Lair;

    iput-object v0, p0, Lbfr;->mEndpointSet:Lair;

    .line 81
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->PROXY_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lajd;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajd;

    :goto_1
    iput-object v0, p0, Lbfr;->mProxyEndpoint:Lajd;

    .line 82
    iget-object v0, p0, Lbfr;->mProxyEndpoint:Lajd;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Lbfr;->DEFAULT_PROXY_ENDPOINT:Lajd;

    iput-object v0, p0, Lbfr;->mProxyEndpoint:Lajd;

    .line 86
    :cond_1
    invoke-direct {p0}, Lbfr;->g()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbfr;->mLastPingResults:Ljava/util/Map;

    .line 87
    iget-object v0, p0, Lbfr;->mLastPingResults:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbfr;->mLastPingResults:Ljava/util/Map;

    .line 90
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    .line 76
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 81
    goto :goto_1
.end method

.method public static declared-synchronized a()Lbfr;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lbfr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbfr;->sInstance:Lbfr;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lbfr;

    invoke-direct {v0}, Lbfr;-><init>()V

    sput-object v0, Lbfr;->sInstance:Lbfr;

    .line 96
    :cond_0
    sget-object v0, Lbfr;->sInstance:Lbfr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lazm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const-string v0, "https://cash.square-sandbox.com"

    .line 498
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://sc-connect.squareup.com"

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-static {}, Lazm;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    const-string v0, "https://cash.square-sandbox.com"

    .line 505
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://cash.square.com"

    goto :goto_0
.end method

.method private g()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lajd;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 301
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PING_RESULTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-object v0

    .line 306
    :cond_0
    new-instance v0, Lbfr$1;

    invoke-direct {v0, p0}, Lbfr$1;-><init>(Lbfr;)V

    invoke-virtual {v0}, Lbfr$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 307
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-static {}, Latn;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v5, Lajd;

    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajd;

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 316
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 0

    .prologue
    .line 126
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 4
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
    .line 399
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 400
    iget-object v0, p0, Lbfr;->mProxyEndpoint:Lajd;

    iget-object v0, v0, Lajd;->mAddliveBaseUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/resolve_streamer.do"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    :cond_0
    return-object v1
.end method
