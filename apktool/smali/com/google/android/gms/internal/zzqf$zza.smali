.class Lcom/google/android/gms/internal/zzqf$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzaoZ:Lcom/google/android/gms/internal/zzqf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqf;Lcom/google/android/gms/internal/zzqf$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Lcom/google/android/gms/internal/zzqf;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.location.places.METHOD_CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "PLACE_IDS"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqf;->zzc(Lcom/google/android/gms/internal/zzqf;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "METHOD_NAMES"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzqf;->zzd(Lcom/google/android/gms/internal/zzqf;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzqf;->zze(Lcom/google/android/gms/internal/zzqf;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzqf;->zza(Lcom/google/android/gms/internal/zzqf;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqf$zza;->zzaoZ:Lcom/google/android/gms/internal/zzqf;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzqf;->zzb(Lcom/google/android/gms/internal/zzqf;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
