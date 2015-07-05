.class public Lcom/google/android/gms/internal/zzbq;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzoJ:Lcom/google/android/gms/internal/zzat;

.field private zzoK:Lcom/google/android/gms/ads/AdListener;

.field private final zzpD:Lcom/google/android/gms/internal/zzdq;

.field private final zzpE:Lcom/google/android/gms/internal/zzaz;

.field private zzpG:Lcom/google/android/gms/internal/zzbi;

.field private zzpH:Ljava/lang/String;

.field private zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzpM:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzpf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzbA()Lcom/google/android/gms/internal/zzaz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzbq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaz;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzbA()Lcom/google/android/gms/internal/zzaz;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzbq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaz;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaz;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpD:Lcom/google/android/gms/internal/zzdq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbq;->zzpE:Lcom/google/android/gms/internal/zzaz;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbq;->zzpM:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-void
.end method

.method private zzy(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpf:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbq;->zzz(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbE()Lcom/google/android/gms/internal/zzaw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zzba;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzba;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbq;->zzpf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbq;->zzpD:Lcom/google/android/gms/internal/zzdq;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdq;)Lcom/google/android/gms/internal/zzbi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzoK:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzav;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzoK:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzav;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbh;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzoJ:Lcom/google/android/gms/internal/zzat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzoJ:Lcom/google/android/gms/internal/zzat;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzau;-><init>(Lcom/google/android/gms/internal/zzat;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbg;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzbc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbc;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbk;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzft;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfo;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzfx;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzck;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzcj;)V

    :cond_6
    return-void
.end method

.method private zzz(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad unit ID must be set on InterstitialAd before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzoK:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpf:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->getMediationAdapterClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbi;->isReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to check if ad is ready."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzoK:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzav;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzav;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpf:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzpf:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzbc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbc;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setInAppPurchaseListener(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzft;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the InAppPurchaseListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzck;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzck;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzcj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the OnCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In app purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbq;->zzpH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzfx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzfx;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the play store purchase parameter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbq;->zzz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzat;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbq;->zzoJ:Lcom/google/android/gms/internal/zzat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzau;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzau;-><init>(Lcom/google/android/gms/internal/zzat;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdClickListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-nez v0, :cond_0

    const-string v0, "loadAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbq;->zzy(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpG:Lcom/google/android/gms/internal/zzbi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbq;->zzpE:Lcom/google/android/gms/internal/zzaz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbq;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzaz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbo;)Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzax;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbq;->zzpD:Lcom/google/android/gms/internal/zzdq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbo;->zzbJ()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdq;->zze(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
