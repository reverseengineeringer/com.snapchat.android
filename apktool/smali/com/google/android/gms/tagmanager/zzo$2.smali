.class Lcom/google/android/gms/tagmanager/zzo$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzn$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzo;->zzsN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaxX:Lcom/google/android/gms/tagmanager/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzo$2;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzcQ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$2;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzo;->zzcQ(Ljava/lang/String;)V

    return-void
.end method

.method public zzsK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzo$2;->zzaxX:Lcom/google/android/gms/tagmanager/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzo;->zzsK()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzsM()V
    .locals 1

    const-string v0, "Refresh ignored: container loaded as default only."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzac(Ljava/lang/String;)V

    return-void
.end method
