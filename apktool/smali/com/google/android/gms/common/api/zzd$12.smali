.class Lcom/google/android/gms/common/api/zzd$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/internal/zzaa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNb:Lcom/google/android/gms/common/api/zzd;

.field final synthetic zzNh:Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/internal/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNh:Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNh:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->zzjn()Lcom/google/android/gms/common/internal/zzq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zza(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/internal/zzq;)Lcom/google/android/gms/common/internal/zzq;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zzb(Lcom/google/android/gms/common/api/zzd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNh:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->zzjp()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zzc(Lcom/google/android/gms/common/api/zzd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNh:Lcom/google/android/gms/common/internal/zzaa;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzaa;->zzjq()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/zzd;->zzd(Lcom/google/android/gms/common/api/zzd;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$12;->zzNb:Lcom/google/android/gms/common/api/zzd;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzd;->zzo(Lcom/google/android/gms/common/api/zzd;)V

    return-void
.end method
