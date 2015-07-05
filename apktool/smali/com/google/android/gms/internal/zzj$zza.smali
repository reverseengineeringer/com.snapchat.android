.class Lcom/google/android/gms/internal/zzj$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private zzkQ:Ljava/lang/String;

.field private zzkR:Z

.field final synthetic zzkS:Lcom/google/android/gms/internal/zzj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzj;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzj$zza;->zzkS:Lcom/google/android/gms/internal/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzj$zza;->zzkQ:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzj$zza;->zzkR:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzj$zza;->zzkQ:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzj$zza;->zzkR:Z

    return v0
.end method
