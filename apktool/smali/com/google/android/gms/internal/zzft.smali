.class public final Lcom/google/android/gms/internal/zzft;
.super Lcom/google/android/gms/internal/zzfo$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfo$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzft;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzfn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzft;->zzpJ:Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;

    new-instance v1, Lcom/google/android/gms/internal/zzfw;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzfw;-><init>(Lcom/google/android/gms/internal/zzfn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/purchase/InAppPurchaseListener;->onInAppPurchaseRequested(Lcom/google/android/gms/ads/purchase/InAppPurchase;)V

    return-void
.end method
