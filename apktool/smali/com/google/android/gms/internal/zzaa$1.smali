.class Lcom/google/android/gms/internal/zzaa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaa;-><init>(Lcom/google/android/gms/internal/zzt;Lcom/google/android/gms/internal/zzaa$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzmL:Ljava/lang/ref/WeakReference;

.field final synthetic zzmM:Lcom/google/android/gms/internal/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaa;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaa$1;->zzmM:Lcom/google/android/gms/internal/zzaa;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaa$1;->zzmL:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa$1;->zzmM:Lcom/google/android/gms/internal/zzaa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaa;->zza(Lcom/google/android/gms/internal/zzaa;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaa$1;->zzmL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaa$1;->zzmM:Lcom/google/android/gms/internal/zzaa;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaa;->zza(Lcom/google/android/gms/internal/zzaa;)Lcom/google/android/gms/internal/zzax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzt;->zzb(Lcom/google/android/gms/internal/zzax;)V

    :cond_0
    return-void
.end method
