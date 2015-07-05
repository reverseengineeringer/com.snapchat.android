.class public final Lcom/google/android/gms/internal/zzck;
.super Lcom/google/android/gms/internal/zzcj$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcj$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzck;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzci;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzck;->zzpL:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v1, Lcom/google/android/gms/internal/zzch;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzch;-><init>(Lcom/google/android/gms/internal/zzci;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
