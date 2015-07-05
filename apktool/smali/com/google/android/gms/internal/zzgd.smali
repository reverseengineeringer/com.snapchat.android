.class public Lcom/google/android/gms/internal/zzgd;
.super Lcom/google/android/gms/internal/zzfy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzhe$zza;Lcom/google/android/gms/internal/zzic;Lcom/google/android/gms/internal/zzgc$zza;)V

    return-void
.end method


# virtual methods
.method protected zzdG()V
    .locals 0

    return-void
.end method

.method protected zzg(J)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzgd$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgd$1;-><init>(Lcom/google/android/gms/internal/zzgd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzgd;->zzf(J)V

    return-void
.end method
