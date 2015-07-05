.class final Lcom/google/android/gms/internal/zzgw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzgw;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzdf;Lcom/google/android/gms/internal/zzbv;Lcom/google/android/gms/internal/zzdg;Lcom/google/android/gms/internal/zzhc;Lcom/google/android/gms/internal/zzgo;)Lcom/google/android/gms/internal/zzgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzxj:Lcom/google/android/gms/internal/zzdf;

.field final synthetic zzxk:Lcom/google/android/gms/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgy;Lcom/google/android/gms/internal/zzdf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxj:Lcom/google/android/gms/internal/zzdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy;->zzdT()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy;->zzdR()Lcom/google/android/gms/internal/zzia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgy;->zzdR()Lcom/google/android/gms/internal/zzia;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgw$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzgw$3$1;-><init>(Lcom/google/android/gms/internal/zzgw$3;)V

    new-instance v2, Lcom/google/android/gms/internal/zzia$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzia$zzb;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzia;->zza(Lcom/google/android/gms/internal/zzia$zzd;Lcom/google/android/gms/internal/zzia$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxj:Lcom/google/android/gms/internal/zzdf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgw$3;->zzxk:Lcom/google/android/gms/internal/zzgy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgy;->zzdR()Lcom/google/android/gms/internal/zzia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdf;->zzb(Lcom/google/android/gms/internal/zzia;)V

    :cond_0
    return-void
.end method
