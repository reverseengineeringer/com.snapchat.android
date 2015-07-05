.class final Lcom/google/android/gms/internal/zzeq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzmG:Ljava/lang/Runnable;

.field private volatile zzuF:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzuF:Z

    new-instance v0, Lcom/google/android/gms/internal/zzeq$zza$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzeq$zza$1;-><init>(Lcom/google/android/gms/internal/zzeq$zza;Lcom/google/android/gms/internal/zzeq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzmG:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeq$zza;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzuF:Z

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzuF:Z

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzmG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzdq()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzhw;->zzzG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq$zza;->zzmG:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
