.class Lcom/google/android/gms/tagmanager/zzas$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzas;->zzd(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzayN:Lcom/google/android/gms/tagmanager/zzar;

.field final synthetic zzayO:J

.field final synthetic zzayP:Lcom/google/android/gms/tagmanager/zzas;

.field final synthetic zzzC:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzas;Lcom/google/android/gms/tagmanager/zzar;JLjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayP:Lcom/google/android/gms/tagmanager/zzas;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayN:Lcom/google/android/gms/tagmanager/zzar;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayO:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzzC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayP:Lcom/google/android/gms/tagmanager/zzas;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzas;->zza(Lcom/google/android/gms/tagmanager/zzas;)Lcom/google/android/gms/tagmanager/zzat;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzct;->zztR()Lcom/google/android/gms/tagmanager/zzct;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayP:Lcom/google/android/gms/tagmanager/zzas;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzas;->zzb(Lcom/google/android/gms/tagmanager/zzas;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayN:Lcom/google/android/gms/tagmanager/zzar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzct;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzar;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayP:Lcom/google/android/gms/tagmanager/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzct;->zztS()Lcom/google/android/gms/tagmanager/zzat;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzas;->zza(Lcom/google/android/gms/tagmanager/zzas;Lcom/google/android/gms/tagmanager/zzat;)Lcom/google/android/gms/tagmanager/zzat;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayP:Lcom/google/android/gms/tagmanager/zzas;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzas;->zza(Lcom/google/android/gms/tagmanager/zzas;)Lcom/google/android/gms/tagmanager/zzat;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzayO:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzas$1;->zzzC:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzat;->zzf(JLjava/lang/String;)V

    return-void
.end method
