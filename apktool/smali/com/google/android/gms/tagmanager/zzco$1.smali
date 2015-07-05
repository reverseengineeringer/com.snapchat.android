.class Lcom/google/android/gms/tagmanager/zzco$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzl$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzco;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzs$zza;Lcom/google/android/gms/tagmanager/zzs$zza;Lcom/google/android/gms/tagmanager/zzag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzl$zza",
        "<",
        "Lcom/google/android/gms/internal/zzvl$zza;",
        "Lcom/google/android/gms/tagmanager/zzbv",
        "<",
        "Lcom/google/android/gms/internal/zzd$zza;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zzaAi:Lcom/google/android/gms/tagmanager/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzco;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzco$1;->zzaAi:Lcom/google/android/gms/tagmanager/zzco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzvl$zza;

    check-cast p2, Lcom/google/android/gms/tagmanager/zzbv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzco$1;->zza(Lcom/google/android/gms/internal/zzvl$zza;Lcom/google/android/gms/tagmanager/zzbv;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzvl$zza;Lcom/google/android/gms/tagmanager/zzbv;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzvl$zza;",
            "Lcom/google/android/gms/tagmanager/zzbv",
            "<",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzbv;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd$zza;->zzvX()I

    move-result v0

    return v0
.end method
