.class Lcom/google/android/gms/common/api/zzd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzd;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;

.field final synthetic zzNd:Lcom/google/android/gms/common/api/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/api/zzg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$4;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd$4;->zzNd:Lcom/google/android/gms/common/api/zzg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$4;->zzNd:Lcom/google/android/gms/common/api/zzg;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
