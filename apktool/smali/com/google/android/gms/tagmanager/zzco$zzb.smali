.class Lcom/google/android/gms/tagmanager/zzco$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private zzaAn:Lcom/google/android/gms/tagmanager/zzbv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbv",
            "<",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzaAo:Lcom/google/android/gms/internal/zzd$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzbv;Lcom/google/android/gms/internal/zzd$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbv",
            "<",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAn:Lcom/google/android/gms/tagmanager/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAo:Lcom/google/android/gms/internal/zzd$zza;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAn:Lcom/google/android/gms/tagmanager/zzbv;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzbv;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd$zza;->zzvX()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAo:Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAo:Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd$zza;->zzvX()I

    move-result v0

    goto :goto_0
.end method

.method public zztJ()Lcom/google/android/gms/tagmanager/zzbv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzbv",
            "<",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAn:Lcom/google/android/gms/tagmanager/zzbv;

    return-object v0
.end method

.method public zztK()Lcom/google/android/gms/internal/zzd$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$zzb;->zzaAo:Lcom/google/android/gms/internal/zzd$zza;

    return-object v0
.end method
