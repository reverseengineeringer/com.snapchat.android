.class public final Lcom/google/android/gms/internal/zzdy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lca;",
        "SERVER_PARAMETERS:",
        "Lbz;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzsS:Lcom/google/android/gms/internal/zzdt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdy;)Lcom/google/android/gms/internal/zzdt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    return-object v0
.end method


# virtual methods
.method public final onClick(Lbx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onClick."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$1;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onDismissScreen(Lbx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$4;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onDismissScreen(Lby;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onDismissScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onDismissScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$9;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$9;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClosed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onFailedToReceiveAd(Lbx;Lbt$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;",
            "Lbt$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzdy$5;-><init>(Lcom/google/android/gms/internal/zzdy;Lbt$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdz;->zza(Lbt$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdt;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onFailedToReceiveAd(Lby;Lbt$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby",
            "<**>;",
            "Lbt$a;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adapter called onFailedToReceiveAd with error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onFailedToReceiveAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$10;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzdy$10;-><init>(Lcom/google/android/gms/internal/zzdy;Lbt$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzdz;->zza(Lbt$a;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzdt;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onLeaveApplication(Lbx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$6;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onLeaveApplication(Lby;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onLeaveApplication."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onLeaveApplication must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$11;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$11;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLeftApplication."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPresentScreen(Lbx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$7;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onPresentScreen(Lby;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onPresentScreen."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onPresentScreen must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$2;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceivedAd(Lbx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbx",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$8;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onReceivedAd(Lby;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lby",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "Adapter called onReceivedAd."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzY(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzbe;->zzbD()Lcom/google/android/gms/internal/zzhw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhw;->zzeC()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReceivedAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhx;->zzac(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdy$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzdy$3;-><init>(Lcom/google/android/gms/internal/zzdy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdy;->zzsS:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdLoaded."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzhx;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
