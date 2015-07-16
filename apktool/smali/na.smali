.class public final Lna;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna$a;
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

.field private static final INSTANCE:Lna;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "AdManager"


# instance fields
.field protected final mAdResponseControllerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lna$a;",
            ">;"
        }
    .end annotation
.end field

.field public mAppContext:Landroid/content/Context;

.field public final mConfiguration:Lnb;

.field public final mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lna;

    invoke-direct {v0}, Lna;-><init>()V

    sput-object v0, Lna;->INSTANCE:Lna;

    .line 57
    const-string v0, "(?i)<html><body[^>]*>(.*)</body></html>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lna;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lnb;

    invoke-direct {v0}, Lnb;-><init>()V

    invoke-direct {p0, v0}, Lna;-><init>(Lnb;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lnb;)V
    .locals 2
    .param p1    # Lnb;
        .annotation build Lchc;
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

    iput-object v0, p0, Lna;->mUIThreadHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lna;->mConfiguration:Lnb;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    .line 71
    return-void
.end method

.method protected static a(Landroid/os/Bundle;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    if-nez p0, :cond_0

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
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    goto :goto_1

    .line 572
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    goto :goto_0
.end method

.method public static a()Lna;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lna;->INSTANCE:Lna;

    return-object v0
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lna;->PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static e(Lnc;)Landroid/os/Bundle;
    .locals 4
    .param p0    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 326
    invoke-virtual {p0}, Lnc;->c()Landroid/os/Bundle;

    move-result-object v2

    .line 327
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lakr;->ad()Ljava/util/Map;

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
    .locals 2

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
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v0, Lna$3;

    invoke-direct {v0, p0, p1}, Lna$3;-><init>(Lna;Ljava/lang/String;)V

    invoke-virtual {v0}, Lul;->execute()V

    goto :goto_0
.end method

.method public final a(Lnc;)V
    .locals 4
    .param p1    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 181
    iget-object v1, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 184
    :cond_0
    return-void
.end method

.method public final a(Lnc;J)V
    .locals 8
    .param p1    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 190
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    .line 192
    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lna;->mConfiguration:Lnb;

    invoke-virtual {p1}, Lnc;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lnb;->mStudySettings:Lakn;

    const-string v3, "AdManager"

    invoke-virtual {v1, v3, v2}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Lna;->c(Lnc;)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v6

    goto :goto_0
.end method

.method public final a(Lnc;Lne;)V
    .locals 2
    .param p1    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 107
    iget-object v0, p0, Lna;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lna$1;

    invoke-direct {v1, p0, p1, p2}, Lna$1;-><init>(Lna;Lnc;Lne;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method public final a(Lnf;J)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p1}, Lnf;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lnf;->mImpressionViewThreshold:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    goto :goto_0

    .line 266
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x0

    .line 267
    :goto_1
    if-nez v0, :cond_4

    .line 268
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p1, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 271
    :cond_4
    invoke-static {v0}, Lna;->a(Landroid/os/Bundle;)Ljava/util/List;

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
    invoke-virtual {p0, v0}, Lna;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final b(Lnc;Lne;)Lna$a;
    .locals 7
    .param p1    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lne;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 343
    iget-object v0, p0, Lna;->mConfiguration:Lnb;

    iget-object v0, v0, Lnb;->mStudySettings:Lakn;

    const-string v1, "AdManager"

    const-string v3, "is_active"

    invoke-virtual {v0, v1, v3, v5}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ADMANAGER_INACTIVE:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "AdManager is inactive"

    invoke-direct {v3, v1, v4}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    iget-object v1, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lna$a;->a(Lna$a;)Lnf;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lna$a;->a(Lna$a;)Lnf;

    move-result-object v1

    iget-object v1, v1, Lnf;->mAdResponseFieldBundle:Landroid/os/Bundle;

    :goto_0
    invoke-virtual {v0, v3, v1}, Lna$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    .line 357
    :cond_0
    :goto_1
    return-object v2

    .line 349
    :cond_1
    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v6

    :cond_2
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lna;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lnc;->a()Ljava/lang/String;

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

    new-instance v2, Lna$a;

    invoke-direct {v2, p0, p1, p2, v0}, Lna$a;-><init>(Lna;Lnc;Lne;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object v0, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v0, Lcom/google/android/gms/ads/mediation/admob/AdMobExtras;

    invoke-static {p1}, Lna;->e(Lnc;)Landroid/os/Bundle;

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
    iget-object v1, v2, Lna$a;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public final b(Lnc;)V
    .locals 2
    .param p1    # Lnc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lna;->c(Lnc;)V

    .line 203
    :cond_0
    return-void
.end method

.method protected final c(Lnc;)V
    .locals 2

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lna$a;

    .line 242
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lna$a;->a()V

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method protected final d(Lnc;)V
    .locals 2

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lna;->mAdResponseControllerMap:Ljava/util/Map;

    invoke-virtual {p1}, Lnc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
