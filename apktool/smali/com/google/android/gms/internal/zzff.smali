.class public Lcom/google/android/gms/internal/zzff;
.super Lcom/google/android/gms/internal/zzfp$zza;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzoi:Landroid/app/Activity;

.field private zzuY:Lcom/google/android/gms/internal/zzfc;

.field zzuZ:Lcom/google/android/gms/internal/zzfi;

.field private zzvb:Lcom/google/android/gms/internal/zzfl;

.field private zzvh:Landroid/content/Context;

.field private zzvi:Lcom/google/android/gms/internal/zzfn;

.field private zzvj:Lcom/google/android/gms/internal/zzfg;

.field private zzvk:Lcom/google/android/gms/internal/zzfk;

.field private zzvl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfp$zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfi;->zzm(Landroid/content/Context;)Lcom/google/android/gms/internal/zzfi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/zzfj;->zzd(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzvb:Lcom/google/android/gms/internal/zzfl;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/google/android/gms/internal/zzfl;->zza(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzfn;->recordPlayBillingResolution(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfn;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/google/android/gms/internal/zzff;->zza(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzvj:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzfi;->zza(Lcom/google/android/gms/internal/zzfg;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Fail to process purchase result."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    throw v0
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfb;->zzc(Landroid/content/Intent;)Lcom/google/android/gms/internal/zzfb;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfb;->zzuU:Lcom/google/android/gms/internal/zzfk;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvk:Lcom/google/android/gms/internal/zzfk;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfb;->zzmg:Lcom/google/android/gms/internal/zzfl;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvb:Lcom/google/android/gms/internal/zzfl;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzfb;->zzuS:Lcom/google/android/gms/internal/zzfn;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    new-instance v1, Lcom/google/android/gms/internal/zzfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzfc;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzuY:Lcom/google/android/gms/internal/zzfc;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfb;->zzuT:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzvh:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhp;->zzex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaO()Lcom/google/android/gms/internal/zzhp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhp;->zzey()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzfc;->zzx(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvb:Lcom/google/android/gms/internal/zzfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfl;->zzdB()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzuY:Lcom/google/android/gms/internal/zzfc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfn;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfc;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "BUY_INTENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfj;->zzf(Landroid/os/Bundle;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzfn;->recordPlayBillingResolution(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzfn;->getProductId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/zzff;->zza(Ljava/lang/String;ZILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzfg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzvi:Lcom/google/android/gms/internal/zzfn;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzfn;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzff;->zzvl:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/zzfg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzvj:Lcom/google/android/gms/internal/zzfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzuZ:Lcom/google/android/gms/internal/zzfi;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzff;->zzvj:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfi;->zzb(Lcom/google/android/gms/internal/zzfg;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "Error when connecting in-app billing service"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzoi:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzaa(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzuY:Lcom/google/android/gms/internal/zzfc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfc;->destroy()V

    return-void
.end method

.method protected zza(Ljava/lang/String;ZILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzvk:Lcom/google/android/gms/internal/zzfk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzvk:Lcom/google/android/gms/internal/zzfk;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzff;->zzvj:Lcom/google/android/gms/internal/zzfg;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfk;->zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/zzfg;)V

    :cond_0
    return-void
.end method
