.class public abstract Lcom/google/android/gms/internal/zzhl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgi;
.end annotation


# instance fields
.field private final zzmG:Ljava/lang/Runnable;

.field private volatile zzzi:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzhl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhl$1;-><init>(Lcom/google/android/gms/internal/zzhl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzmG:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhl;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhl;->zzzi:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhl;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzzi:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzzi:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public abstract onStop()V
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzmG:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhn;->zzb(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract zzdw()V
.end method

.method public final zzeq()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhl;->zzmG:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzhn;->zza(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
