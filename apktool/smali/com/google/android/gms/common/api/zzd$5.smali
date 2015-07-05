.class Lcom/google/android/gms/common/api/zzd$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/zzg;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJx:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;

.field final synthetic zzNd:Lcom/google/android/gms/common/api/zzg;

.field final synthetic zzNe:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/api/zzg;ZLcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNd:Lcom/google/android/gms/common/api/zzg;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNe:Z

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzd$5;->zzJx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/zzd$5;->zzi(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzi(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->reconnect()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNd:Lcom/google/android/gms/common/api/zzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/zzg;->setResult(Lcom/google/android/gms/common/api/Result;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/zzd$5;->zzNe:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$5;->zzJx:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method
