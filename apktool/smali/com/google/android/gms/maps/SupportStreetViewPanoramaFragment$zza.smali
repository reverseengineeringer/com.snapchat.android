.class Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/internal/StreetViewLifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzPt:Landroid/support/v4/app/Fragment;

.field private final zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzPt:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    new-instance v1, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza$1;-><init>(Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;Lcom/google/android/gms/maps/OnStreetViewPanoramaReadyCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->getStreetViewPanoramaAsync(Lcom/google/android/gms/maps/internal/zzu;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzPt:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "StreetViewPanoramaOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "StreetViewPanoramaOptions"

    const-string v2, "StreetViewPanoramaOptions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/maps/internal/zzw;->zza(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onCreateView(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/dynamic/zzd;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/zzd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzf(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onDestroyView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onInflate(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public zzqv()Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/SupportStreetViewPanoramaFragment$zza;->zzaqr:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    return-object v0
.end method
