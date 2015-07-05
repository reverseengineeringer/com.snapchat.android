.class public Lcom/google/android/gms/internal/zzti;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private zzatK:Lcom/google/android/gms/internal/zztl;

.field private final zzatU:Lcom/google/android/gms/internal/zztd$zza;

.field private zzatV:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zztd$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatK:Lcom/google/android/gms/internal/zztl;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatK:Lcom/google/android/gms/internal/zztl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztl;->zzae(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zztd$zza;->zzrE()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatK:Lcom/google/android/gms/internal/zztl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztl;->zzae(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zztd$zza;->zzf(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatU:Lcom/google/android/gms/internal/zztd$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zztd$zza;->zzrF()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzti;->zzatK:Lcom/google/android/gms/internal/zztl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztl;->zzae(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zztl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzti;->zzatK:Lcom/google/android/gms/internal/zztl;

    return-void
.end method

.method public zzad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzti;->zzatV:Z

    return-void
.end method
