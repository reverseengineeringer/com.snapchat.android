.class public final Lmj$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private mAdPlacement:Lml;

.field private mAdResponse:Lmo;

.field private mAdTransformListener:Lmn;

.field mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private mCustomRenderedAd:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

.field private mImpressionUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRecordImpressionWithAdResponse:Z

.field final synthetic this$0:Lmj;


# direct methods
.method constructor <init>(Lmj;Lml;Lmn;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)V
    .locals 1
    .param p2    # Lml;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lmn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 380
    iput-object p1, p0, Lmj$a;->this$0:Lmj;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmj$a;->mShouldRecordImpressionWithAdResponse:Z

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmj$a;->mImpressionUrls:Ljava/util/List;

    .line 381
    iput-object p2, p0, Lmj$a;->mAdPlacement:Lml;

    .line 382
    iput-object p3, p0, Lmj$a;->mAdTransformListener:Lmn;

    .line 383
    iput-object p4, p0, Lmj$a;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 384
    return-void
.end method

.method static synthetic a(Lmj$a;)Lmo;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lmj$a;->mAdResponse:Lmo;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 528
    iget-object v2, p0, Lmj$a;->mImpressionUrls:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmj$a;->mImpressionUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 529
    iget-object v0, p0, Lmj$a;->mImpressionUrls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    iget-object v2, p0, Lmj$a;->this$0:Lmj;

    invoke-virtual {v2, v0}, Lmj;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move v2, v0

    .line 528
    goto :goto_0

    .line 532
    :cond_1
    iget-object v0, p0, Lmj$a;->this$0:Lmj;

    iget-object v1, p0, Lmj$a;->mAdPlacement:Lml;

    invoke-virtual {v0, v1}, Lmj;->d(Lml;)V

    .line 539
    :goto_2
    return-void

    .line 533
    :cond_2
    iget-object v2, p0, Lmj$a;->mCustomRenderedAd:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lmj$a;->mCustomRenderedAd:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    invoke-interface {v0}, Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;->recordImpression()V

    .line 535
    iget-object v0, p0, Lmj$a;->this$0:Lmj;

    iget-object v1, p0, Lmj$a;->mAdPlacement:Lml;

    invoke-virtual {v0, v1}, Lmj;->d(Lml;)V

    goto :goto_2

    .line 537
    :cond_4
    iput-boolean v1, p0, Lmj$a;->mShouldRecordImpressionWithAdResponse:Z

    goto :goto_2
.end method

.method protected final a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p1, Lcom/snapchat/android/ads/AdRequestError;->mErrorCode:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    if-eq v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lmj$a;->this$0:Lmj;

    iget-object v1, p0, Lmj$a;->mAdPlacement:Lml;

    invoke-virtual {v0, v1}, Lmj;->d(Lml;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lmj$a;->mAdTransformListener:Lmn;

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Lmo$a;

    invoke-direct {v0}, Lmo$a;-><init>()V

    iput-object p1, v0, Lmo$a;->mAdRequestError:Lcom/snapchat/android/ads/AdRequestError;

    iput-object p2, v0, Lmo$a;->mAdResponseFieldBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Lmo$a;->a()Lmo;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lmj$a;->mAdTransformListener:Lmn;

    invoke-interface {v1, v0}, Lmn;->a(Lmo;)V

    .line 517
    :cond_1
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 470
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 472
    const-string v1, "ERROR_CODE_UNKNOWN"

    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_UNKNOWN:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    const-string v3, "%s(%d)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    .line 474
    const-string v0, "AdManager"

    const-string v1, "onAdFailedToLoad(%s) for %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/snapchat/android/ads/AdRequestError;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lmj$a;->mAdPlacement:Lml;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    .line 477
    return-void

    .line 472
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INTERNAL_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_INTERNAL_ERROR"

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_INVALID_REQUEST:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_INVALID_REQUEST"

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NETWORK_ERROR:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_NETWORK_ERROR"

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->ERROR_CODE_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v1, "ERROR_CODE_NO_FILL"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 393
    iput-object p1, p0, Lmj$a;->mCustomRenderedAd:Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;

    .line 395
    invoke-interface {p1}, Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmj$a;->mAdTransformListener:Lmn;

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v1, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->EMPTY_CONTENT:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v2, "Empty adUnitUrl in handleAdResponse"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lmj;->b()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lmj$a;->mAdTransformListener:Lmn;

    invoke-interface {v1, v0}, Lmn;->a(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lmj$a;->mImpressionUrls:Ljava/util/List;

    invoke-static {v0}, Lmj;->a(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "Invalid adUnitURL \'%s\' in handleAdResponse"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v2, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v3, "Could not parse DFP response properly: %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v7}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v2, "NO-FILL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->CONTENT_NO_FILL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "adUnitURL is \'%s\' in handleAdResponse"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/snapchat/android/ads/AdRequestError;

    sget-object v3, Lcom/snapchat/android/ads/AdRequestError$ErrorCode;->INVALID_AD_UNIT_URL:Lcom/snapchat/android/ads/AdRequestError$ErrorCode;

    const-string v4, "Invalid adUnitURL \'%s\' in handleAdResponse"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/snapchat/android/ads/AdRequestError;-><init>(Lcom/snapchat/android/ads/AdRequestError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lmj$a;->a(Lcom/snapchat/android/ads/AdRequestError;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    new-instance v2, Lmo$a;

    invoke-direct {v2}, Lmo$a;-><init>()V

    iput-object v1, v2, Lmo$a;->mTransformedUrl:Ljava/lang/String;

    iput-object v0, v2, Lmo$a;->mAdResponseFieldBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Lmo$a;->a()Lmo;

    move-result-object v0

    iput-object v0, p0, Lmj$a;->mAdResponse:Lmo;

    const-string v0, "AdManager"

    const-string v2, "onTransformationComplete for %s with url %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmj$a;->mAdPlacement:Lml;

    aput-object v4, v3, v6

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmj$a;->mAdTransformListener:Lmn;

    iget-object v1, p0, Lmj$a;->mAdResponse:Lmo;

    invoke-interface {v0, v1}, Lmn;->a(Lmo;)V

    iput-object v7, p0, Lmj$a;->mAdTransformListener:Lmn;

    :cond_6
    iget-boolean v0, p0, Lmj$a;->mShouldRecordImpressionWithAdResponse:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmj$a;->a()V

    goto/16 :goto_0
.end method
