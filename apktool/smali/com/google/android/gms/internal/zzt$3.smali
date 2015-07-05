.class Lcom/google/android/gms/internal/zzt$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzt;->zza(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/zzfg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzlJ:Lcom/google/android/gms/internal/zzt;

.field final synthetic zzlK:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzt;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzt$3;->zzlK:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzt$3;->zzlK:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfj;->zzd(Landroid/content/Intent;)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/zzab;->zzaU()Lcom/google/android/gms/internal/zzfj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzt;)Lcom/google/android/gms/internal/zzt$zzb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzt;)Lcom/google/android/gms/internal/zzt$zzb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzt;)Lcom/google/android/gms/internal/zzt$zzb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeF()Lcom/google/android/gms/internal/zzel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzt;)Lcom/google/android/gms/internal/zzt$zzb;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzt$zzb;->zzlW:Lcom/google/android/gms/internal/zzhe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhe;->zzuq:Lcom/google/android/gms/internal/zzic;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzic;->zzeF()Lcom/google/android/gms/internal/zzel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzel;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzt$3;->zzlJ:Lcom/google/android/gms/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzt;->zza(Lcom/google/android/gms/internal/zzt;)Lcom/google/android/gms/internal/zzt$zzb;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzt$zzb;->zzmk:Z

    return-void
.end method
