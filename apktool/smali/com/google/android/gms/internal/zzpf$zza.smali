.class final Lcom/google/android/gms/internal/zzpf$zza;
.super Lcom/google/android/gms/common/internal/zzk$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzk",
        "<",
        "Lcom/google/android/gms/internal/zzpc;",
        ">.zzc<",
        "Lcom/google/android/gms/location/zzf$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzLs:I

.field private final zzamZ:[Ljava/lang/String;

.field final synthetic zzana:Lcom/google/android/gms/internal/zzpf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzpf;Lcom/google/android/gms/location/zzf$zza;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpf$zza;->zzana:Lcom/google/android/gms/internal/zzpf;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzk$zzc;-><init>(Lcom/google/android/gms/common/internal/zzk;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->zzfq(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzpf$zza;->zzLs:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzpf$zza;->zzamZ:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/location/zzf$zza;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzpf$zza;->zzLs:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpf$zza;->zzamZ:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/zzf$zza;->zza(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final synthetic zzi(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/zzf$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpf$zza;->zza(Lcom/google/android/gms/location/zzf$zza;)V

    return-void
.end method

.method protected final zzjf()V
    .locals 0

    return-void
.end method
