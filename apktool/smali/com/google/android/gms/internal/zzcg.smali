.class public final Lcom/google/android/gms/internal/zzcg;
.super Lcom/google/android/gms/internal/zzci$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzrg:Lcom/google/android/gms/internal/zzv;

.field private final zzrh:Ljava/lang/String;

.field private final zzri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzci$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcg;->zzrg:Lcom/google/android/gms/internal/zzv;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcg;->zzrh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcg;->zzri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzri:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzrg:Lcom/google/android/gms/internal/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzv;->recordClick()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzrg:Lcom/google/android/gms/internal/zzv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzv;->recordImpression()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcg;->zzrg:Lcom/google/android/gms/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzf(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzv;->zzb(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final zzcv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcg;->zzrh:Ljava/lang/String;

    return-object v0
.end method
