.class public final Lmj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmj$a;
    }
.end annotation


# static fields
.field public static final AD_RESPONSE_CONTENT_PARAM:Ljava/lang/String; = "content"

.field public static final AD_RESPONSE_CONTENT_TYPE_PARAM:Ljava/lang/String; = "type"

.field public static final AD_RESPONSE_DURATION_PARAM:Ljava/lang/String; = "duration"

.field public static final AD_RESPONSE_IMAGE_MEDIA_TYPE:Ljava/lang/String; = "image"

.field public static final AD_RESPONSE_IMP_URL_PARAM:Ljava/lang/String; = "imp-url"

.field public static final AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM:Ljava/lang/String; = "media_zipped_with_overlay"

.field public static final AD_RESPONSE_THIRD_PARTY_TRACK_URLS_PARAM:Ljava/lang/String; = "third_party_urls"

.field private static final APP_ID:Ljava/lang/String; = "snapchat"

.field private static final INSTANCE:Lmj;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "AdManager"


# instance fields
.field protected final mAdResponseControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmj$a;",
            ">;"
        }
    .end annotation
.end field

.field public mAppContext:Landroid/content/Context;

.field public final mConfiguration:Lmk;

.field public final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lmj;

    invoke-direct {v0}, Lmj;-><init>()V

    sput-object v0, Lmj;->INSTANCE:Lmj;

    .line 57
    const-string v0, "(?i)<html><body[^>]*>(.*)</body></html>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmj;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    invoke-direct {p0, v0}, Lmj;-><init>(Lmk;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lmk;)V
    .locals 2
    .param p1    # Lmk;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmj;->mUIThreadHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lmj;->mConfiguration:Lmk;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    .line 71
    return-void
.end method

.method protected static a(Landroid/os/Bundle;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    if-nez p0, :cond_0

    .line 560
    const-string v1, "AdManager"

    const-string v2, "extractImpressionUrls: adResponseFieldBundle is null "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    :goto_0
    return-object v0

    .line 563
    :cond_0
    const-string v1, "imp-url"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    const-string v1, "imp-url"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :goto_1
    const-string v1, "third_party_urls"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    const-string v1, "third_party_urls"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 566
    :cond_1
    const-string v1, "AdManager"

    const-string v2, "extractImpressionUrls: AdResponseFieldBundle %s does not contain impression url."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 572
    :cond_2
    const-string v1, "AdManager"

    const-string v2, "extractImpressionUrls: AdResponseFieldBundle %s does not contain third party url information."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a()Lmj;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lmj;->INSTANCE:Lmj;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lmj;->PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static e(Lml;)Landroid/os/Bundle;
    .locals 4
    .param p0    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 326
    invoke-virtual {p0}, Lml;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 327
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lajx;->ae()Ljava/util/Map;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 548
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    const-string v0, "AdManager"

    const-string v1, "Impression url %s  is not an https url. No impression recorded for this url"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v0, Lmj$3;

    invoke-direct {v0, p0, p1}, Lmj$3;-><init>(Lmj;Ljava/lang/String;)V

    invoke-virtual {v0}, Ltv;->f()V

    goto :goto_0
.end method

.method public final a(Lml;)V
    .locals 6
    .param p1    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 177
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    .line 178
    const-string v1, "AdManager"

    const-string v2, "beginAdView for adKey:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    const-string v1, "AdManager"

    const-string v2, "WARNING: beginAdView called without a controller for adKey:%s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_0
    return-void
.end method

.method public final a(Lml;J)V
    .locals 10
    .param p1    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    const-string v0, "AdManager"

    const-string v1, "endAdView for adKey:%s, viewTime:%s ms"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdManager"

    const-string v2, "endAdView for adKey:%s, viewTime:%s ms"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmj;->mConfiguration:Lmk;

    invoke-virtual {p1}, Lml;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lmk;->mStudySettings:Lajt;

    const-string v3, "AdManager"

    invoke-virtual {v1, v3, v2}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Lmj;->c(Lml;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v1, "AdManager"

    const-string v4, "recordQualifiedImpression(%s,%d) - ad not shown long enough %d for recordImpression to be called"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lml;Lmn;)V
    .locals 4
    .param p1    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 105
    const-string v0, "AdManager"

    const-string v1, "Begin transform ad placeholder %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lmj;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lmj$1;

    invoke-direct {v1, p0, p1, p2}, Lmj$1;-><init>(Lmj;Lml;Lmn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public final a(Lmo;J)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    if-nez p1, :cond_1

    .line 258
    const-string v0, "AdManager"

    const-string v1, "Received null for adResponse. No impression recorded."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1}, Lmo;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lmo;->mImpressionViewThreshold:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 263
    const-string v0, "AdManager"

    const-string v1, "The ad was viewed for %s, not enough to record an impression for %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 267
    :goto_1
    if-nez v0, :cond_4

    .line 268
    const-string v0, "AdManager"

    const-string v1, "The adResponseFieldBundle was null. No impressions recorded. AdResponse: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p1, Lmo;->mAdResponseFieldBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 271
    :cond_4
    invoke-static {v0}, Lmj;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-virtual {p0, v0}, Lmj;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final b(Lml;Lmn;)Lmj$a;
    .locals 7
    .param p1    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lmn;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget-object v0, p0, Lmj;->mConfiguration:Lmk;

    iget-object v0, v0, Lmk;->mStudySettings:Lajt;

    const-string v1, "AdManager"

    const-string v3, "is_active"

    invoke-virtual {v0, v1, v3, v5}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ADMANAGER_INACTIVE:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "AdManager is inactive"

    invoke-direct {v3, v1, v4}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    iget-object v1, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmj$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lmj$a;->a(Lmj$a;)Lmo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lmj$a;->a(Lmj$a;)Lmo;

    move-result-object v1

    iget-object v1, v1, Lmo;->mAdResponseFieldBundle:Landroid/os/Bundle;

    :goto_0
    invoke-virtual {v0, v3, v1}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    .line 357
    :cond_0
    :goto_1
    return-object v2

    .line 349
    :cond_1
    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdManager"

    const-string v1, "Ad controller exists for placement: %s. Regardless, creating a new one."

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lmj;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lml;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x140

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    new-instance v2, Lmj$a;

    invoke-direct {v2, p0, p1, p2, v0}, Lmj$a;-><init>(Lmj;Lml;Lmn;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-static {p1}, Lmj;->e(Lml;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    .line 355
    iget-object v1, v2, Lmj$a;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public final b(Lml;)V
    .locals 2
    .param p1    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lmj;->c(Lml;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected final c(Lml;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    if-nez p1, :cond_0

    .line 237
    const-string v0, "AdManager"

    const-string v1, "recordImpressionForAdPlacement: adPlacement is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmj$a;

    .line 242
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lmj$a;->a()V

    goto :goto_0

    .line 245
    :cond_1
    const-string v0, "AdManager"

    const-string v1, "No controller for recordImpressionForAdPlacement on %s, probably duplicate call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final d(Lml;)V
    .locals 3

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const-string v0, "AdManager"

    const-string v1, "removeControllerForAdPlacement: adPlacement is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lmj;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
