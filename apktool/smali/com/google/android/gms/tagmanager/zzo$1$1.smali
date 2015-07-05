.class Lcom/google/android/gms/tagmanager/zzo$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzo$1;->zza(Lcom/google/android/gms/internal/zzvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcQ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzo$1;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzcQ(Ljava/lang/String;)V

    return-void
.end method

.method public zzsK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzo$1;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsM()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzo$1;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzo;->zze(Lcom/google/android/gms/tagmanager/zzo;)Lcom/google/android/gms/tagmanager/zzcc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzcc;->zzgv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzo$1;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzo$1$1;->zzaxY:Lcom/google/android/gms/tagmanager/zzo$1;

    iget-object v1, v1, Lcom/google/android/gms/tagmanager/zzo$1;->zzaxW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzo;->load(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
