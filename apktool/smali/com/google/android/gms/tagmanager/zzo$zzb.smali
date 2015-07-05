.class Lcom/google/android/gms/tagmanager/zzo$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzbe",
        "<",
        "Lcom/google/android/gms/internal/zzvd$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxX:Lcom/google/android/gms/tagmanager/zzo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/tagmanager/zzo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzo;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzvd$zza;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzvd$zza;->zzaBL:Lcom/google/android/gms/internal/zzc$zzj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzvd$zza;->zzaBL:Lcom/google/android/gms/internal/zzc$zzj;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzvd$zza;->zzaBK:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/zzo;Lcom/google/android/gms/internal/zzc$zzj;JZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzvd$zza;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzc$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzc$zzj;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzc$zzf;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbe$zza;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzh(Lcom/google/android/gms/tagmanager/zzo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$zzb;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzo;->zza(Lcom/google/android/gms/tagmanager/zzo;J)V

    :cond_0
    return-void
.end method

.method public synthetic zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzvd$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzo$zzb;->zza(Lcom/google/android/gms/internal/zzvd$zza;)V

    return-void
.end method

.method public zzsR()V
    .locals 0

    return-void
.end method
