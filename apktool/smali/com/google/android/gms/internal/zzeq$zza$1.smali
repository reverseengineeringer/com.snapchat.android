.class Lcom/google/android/gms/internal/zzeq$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzeq$zza;-><init>(Lcom/google/android/gms/internal/zzeq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final zzuG:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzeq;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzuH:Lcom/google/android/gms/internal/zzeq;

.field final synthetic zzuI:Lcom/google/android/gms/internal/zzeq$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeq$zza;Lcom/google/android/gms/internal/zzeq;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuI:Lcom/google/android/gms/internal/zzeq$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuH:Lcom/google/android/gms/internal/zzeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuH:Lcom/google/android/gms/internal/zzeq;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuG:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuG:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuI:Lcom/google/android/gms/internal/zzeq$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeq$zza;->zza(Lcom/google/android/gms/internal/zzeq$zza;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeq;->zzdp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeq$zza$1;->zzuI:Lcom/google/android/gms/internal/zzeq$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeq$zza;->zzdq()V

    :cond_0
    return-void
.end method
