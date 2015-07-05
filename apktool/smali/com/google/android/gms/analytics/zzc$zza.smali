.class final Lcom/google/android/gms/analytics/zzc$zza;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzAX:Lcom/google/android/gms/analytics/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzil$zza;->zzH(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzil;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzc;->zza(Lcom/google/android/gms/analytics/zzc;Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzil;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzc;->zza(Lcom/google/android/gms/analytics/zzc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzc;->zzb(Lcom/google/android/gms/analytics/zzc;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {v0, v2}, Lcom/google/android/gms/analytics/zzc;->zza(Lcom/google/android/gms/analytics/zzc;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzc;->zzc(Lcom/google/android/gms/analytics/zzc;)Lcom/google/android/gms/analytics/zzc$zzc;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/analytics/zzc$zzc;->zza(ILandroid/content/Intent;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/zzc;->zza(Lcom/google/android/gms/analytics/zzc;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc$zza;->zzAX:Lcom/google/android/gms/analytics/zzc;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzc;->zzd(Lcom/google/android/gms/analytics/zzc;)Lcom/google/android/gms/analytics/zzc$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzc$zzb;->onDisconnected()V

    return-void
.end method
