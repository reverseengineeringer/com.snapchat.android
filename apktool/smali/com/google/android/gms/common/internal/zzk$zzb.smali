.class final Lcom/google/android/gms/common/internal/zzk$zzb;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzPT:Lcom/google/android/gms/common/internal/zzk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzk;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->zzjf()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->unregister()V

    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zzl;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;ILandroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzl;->zzaJ(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-static {v0, v3, v2, v4}, Lcom/google/android/gms/common/internal/zzk;->zza(Lcom/google/android/gms/common/internal/zzk;IILandroid/os/IInterface;)Z

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzk$zzb;->zzPT:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->zzjf()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->unregister()V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v5, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/zzk$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzk$zzc;->zzjg()V

    goto :goto_0

    :cond_6
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
