.class Lcom/google/android/gms/common/api/zzd$zza;
.super Lcom/google/android/gms/internal/zzuv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private zzNj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/api/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/zzd;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzuv;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzd$zza;->zzNj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/internal/zzut;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzd$zza;->zzNj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/zzd;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/zzd;->zzc(Lcom/google/android/gms/common/api/zzd;Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    return-void
.end method
