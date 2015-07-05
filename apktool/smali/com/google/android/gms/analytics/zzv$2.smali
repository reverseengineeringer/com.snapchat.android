.class Lcom/google/android/gms/analytics/zzv$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/zzv;->zzfI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzCg:Lcom/google/android/gms/analytics/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v6, v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/analytics/zzv;->zzfK()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v2}, Lcom/google/android/gms/analytics/zzv;->zzb(Lcom/google/android/gms/analytics/zzv;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v4}, Lcom/google/android/gms/analytics/zzv;->zzc(Lcom/google/android/gms/analytics/zzv;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/zzv;->dispatchLocalHits()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzy;->zzfV()Lcom/google/android/gms/analytics/zzy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/zzy;->zzF(Z)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/analytics/zzv;->zza(Lcom/google/android/gms/analytics/zzv;J)J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzv;->zzc(Lcom/google/android/gms/analytics/zzv;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzv;->zzd(Lcom/google/android/gms/analytics/zzv;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v0}, Lcom/google/android/gms/analytics/zzv;->zze(Lcom/google/android/gms/analytics/zzv;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v1}, Lcom/google/android/gms/analytics/zzv;->zze(Lcom/google/android/gms/analytics/zzv;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/analytics/zzv;->zzfK()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzv$2;->zzCg:Lcom/google/android/gms/analytics/zzv;

    invoke-static {v3}, Lcom/google/android/gms/analytics/zzv;->zzc(Lcom/google/android/gms/analytics/zzv;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return v6
.end method
