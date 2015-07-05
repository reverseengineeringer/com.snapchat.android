.class public final Lcom/google/android/gms/internal/zzau;
.super Lcom/google/android/gms/internal/zzbg$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzoJ:Lcom/google/android/gms/internal/zzat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzat;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbg$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau;->zzoJ:Lcom/google/android/gms/internal/zzat;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzau;->zzoJ:Lcom/google/android/gms/internal/zzat;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzat;->onAdClicked()V

    return-void
.end method
