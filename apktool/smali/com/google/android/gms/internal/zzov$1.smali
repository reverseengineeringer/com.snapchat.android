.class Lcom/google/android/gms/internal/zzov$1;
.super Lcom/google/android/gms/internal/zzov$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzov;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamB:J

.field final synthetic zzamC:Landroid/app/PendingIntent;

.field final synthetic zzamD:Lcom/google/android/gms/internal/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzov;Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzov$1;->zzamD:Lcom/google/android/gms/internal/zzov;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzov$1;->zzamB:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzov$1;->zzamC:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzov$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzov$1;->zza(Lcom/google/android/gms/internal/zzpf;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzpf;)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzov$1;->zzamB:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzov$1;->zzamC:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzpf;->zza(JLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzov$1;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
