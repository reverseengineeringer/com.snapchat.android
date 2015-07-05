.class Lcom/google/android/gms/analytics/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/zzc$zzc;,
        Lcom/google/android/gms/analytics/zzc$zzb;,
        Lcom/google/android/gms/analytics/zzc$zza;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzAT:Landroid/content/ServiceConnection;

.field private zzAU:Lcom/google/android/gms/analytics/zzc$zzb;

.field private zzAV:Lcom/google/android/gms/analytics/zzc$zzc;

.field private zzAW:Lcom/google/android/gms/internal/zzil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/zzc$zzb;Lcom/google/android/gms/analytics/zzc$zzc;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzc;->mContext:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/analytics/zzc;->zzAU:Lcom/google/android/gms/analytics/zzc$zzb;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/zzc;->zzAV:Lcom/google/android/gms/analytics/zzc$zzc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzc;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzc;Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzil;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzc;->zzAW:Lcom/google/android/gms/internal/zzil;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/analytics/zzc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzc;->zzfd()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/analytics/zzc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/analytics/zzc;)Lcom/google/android/gms/analytics/zzc$zzc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAV:Lcom/google/android/gms/analytics/zzc$zzc;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/analytics/zzc;)Lcom/google/android/gms/analytics/zzc$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAU:Lcom/google/android/gms/analytics/zzc$zzb;

    return-object v0
.end method

.method private zzfb()Lcom/google/android/gms/internal/zzil;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzc;->zzfc()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAW:Lcom/google/android/gms/internal/zzil;

    return-object v0
.end method

.method private zzfd()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzc;->zzfe()V

    return-void
.end method

.method private zzfe()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAU:Lcom/google/android/gms/analytics/zzc$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzc$zzb;->onConnected()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzZ(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/analytics/zzc$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/zzc$zza;-><init>(Lcom/google/android/gms/analytics/zzc;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzc;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    const/16 v4, 0x81

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: bindService returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzab(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iput-object v5, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAV:Lcom/google/android/gms/analytics/zzc$zzc;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v5}, Lcom/google/android/gms/analytics/zzc$zzc;->zza(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/analytics/zzc;->zzAW:Lcom/google/android/gms/internal/zzil;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzlo;->zzka()Lcom/google/android/gms/internal/zzlo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlo;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/analytics/zzc;->zzAT:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAU:Lcom/google/android/gms/analytics/zzc$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzc$zzb;->onDisconnected()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzc;->zzAW:Lcom/google/android/gms/internal/zzil;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzik;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzc;->zzfb()Lcom/google/android/gms/internal/zzil;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzil;->zza(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzZ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzfa()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzc;->zzfb()Lcom/google/android/gms/internal/zzil;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzil;->zzfa()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear hits failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzae;->zzZ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected zzfc()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzc;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
