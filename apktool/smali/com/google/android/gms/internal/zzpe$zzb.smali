.class Lcom/google/android/gms/internal/zzpe$zzb;
.super Lcom/google/android/gms/location/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private zzamW:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/zzd$zza;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzpe$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzpe$zza;-><init>(Lcom/google/android/gms/location/LocationListener;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe$zzb;->zzamW:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzpe$zza;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzpe$zza;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpe$zzb;->zzamW:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpe$zzb;->zzamW:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzpe$zzb;->zzamW:Landroid/os/Handler;

    return-void
.end method
