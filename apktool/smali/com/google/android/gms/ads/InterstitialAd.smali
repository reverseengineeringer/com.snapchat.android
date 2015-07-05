.class public final Lcom/google/android/gms/ads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final zzlm:Lcom/google/android/gms/internal/zzbq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    move-result-object v0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzY()Lcom/google/android/gms/internal/zzbo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/internal/zzbo;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbq;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    check-cast p1, Lcom/google/android/gms/internal/zzat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/internal/zzat;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbq;->zza(Lcom/google/android/gms/internal/zzat;)V

    goto :goto_0
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbq;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public final setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbq;->setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    return-void
.end method

.method public final setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbq;->setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V

    return-void
.end method

.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/InterstitialAd;->zzlm:Lcom/google/android/gms/internal/zzbq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->show()V

    return-void
.end method
