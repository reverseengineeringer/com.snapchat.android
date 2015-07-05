.class public Lcom/google/android/gms/internal/zzbp;
.super Ljava/lang/Object;


# instance fields
.field private zzoJ:Lcom/google/android/gms/internal/zzat;

.field private zzoK:Lcom/google/android/gms/ads/AdListener;

.field private final zzpD:Lcom/google/android/gms/internal/zzdq;

.field private final zzpE:Lcom/google/android/gms/internal/zzaz;

.field private final zzpF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzpG:Lcom/google/android/gms/internal/zzbi;

.field private zzpH:Ljava/lang/String;

.field private zzpI:Landroid/view/ViewGroup;

.field private zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

.field private zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

.field private zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzpe:[Lcom/google/android/gms/ads/AdSize;

.field private zzpf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzbA()Lcom/google/android/gms/internal/zzaz;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzbp;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzaz;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzaz;->zzbA()Lcom/google/android/gms/internal/zzaz;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzbp;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzaz;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzaz;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbp;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzaz;Lcom/google/android/gms/internal/zzbi;)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/zzaz;Lcom/google/android/gms/internal/zzbi;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzdq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpD:Lcom/google/android/gms/internal/zzdq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbp;->zzpE:Lcom/google/android/gms/internal/zzaz;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpF:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzbd;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzbd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbd;->zzi(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    aget-object v3, v3, v4

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzhw;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzba;

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/google/android/gms/internal/zzhw;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzbN()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->zzac()Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzf(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private zzbO()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbE()Lcom/google/android/gms/internal/zzaw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbp;->zzpD:Lcom/google/android/gms/internal/zzdq;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/zzaw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzdq;)Lcom/google/android/gms/internal/zzbi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzoK:Lcom/google/android/gms/ads/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzav;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzoK:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzav;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbh;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzoJ:Lcom/google/android/gms/internal/zzat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzau;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzoJ:Lcom/google/android/gms/internal/zzat;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzau;-><init>(Lcom/google/android/gms/internal/zzat;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbg;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzbc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzbc;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbk;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzft;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfo;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzfx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzfx;-><init>(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzfs;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzck;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzck;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzcj;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbF()Lcom/google/android/gms/internal/zzbf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzbl;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbp;->zzbN()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzoK:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->zzad()Lcom/google/android/gms/internal/zzba;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzba;->zzbB()Lcom/google/android/gms/ads/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public getInAppPurchaseListener()Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-object v0
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordManualImpression()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->zzan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbi;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzoK:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbp;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpf:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpd:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Play store purchase parameter has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

    const-string v1, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setPlayStorePurchaseParams(Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InAppPurchaseListener has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpK:Lcom/google/android/gms/ads/purchase/PlayStorePurchaseListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbp;->zzpH:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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

.method public zza(Lcom/google/android/gms/internal/zzat;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzoJ:Lcom/google/android/gms/internal/zzat;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbp;->zzbO()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbp;->zzpE:Lcom/google/android/gms/internal/zzaz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzaz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzbo;)Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzax;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpD:Lcom/google/android/gms/internal/zzdq;

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

.method public varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpG:Lcom/google/android/gms/internal/zzbi;

    new-instance v1, Lcom/google/android/gms/internal/zzba;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbp;->zzpe:[Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzba;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbi;->zza(Lcom/google/android/gms/internal/zzba;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbp;->zzpI:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
