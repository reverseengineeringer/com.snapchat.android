.class Lcom/google/android/gms/tagmanager/zzo$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzaxX:Lcom/google/android/gms/tagmanager/zzo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$zzd;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/tagmanager/zzo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzd;-><init>(Lcom/google/android/gms/tagmanager/zzo;)V

    return-void
.end method


# virtual methods
.method public zzcQ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzd;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzcQ(Ljava/lang/String;)V

    return-void
.end method

.method public zzsK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzd;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsM()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzd;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzo;->zze(Lcom/google/android/gms/tagmanager/zzo;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcc;->zzgv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzd;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/zzo;J)V

    :cond_0
    return-void
.end method
