.class Lcom/google/android/gms/tagmanager/zzco$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzco$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzco;->zza(Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcn;)Lcom/google/android/gms/tagmanager/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAi:Lcom/google/android/gms/tagmanager/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzco;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzco$4;->zzaAi:Lcom/google/android/gms/tagmanager/zzco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzvl$zze;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzvl$zze;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzvl$zza;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzvl$zza;",
            ">;",
            "Lcom/google/android/gms/tagmanager/zzcj;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuE()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuF()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcj;->zztq()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuE()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuJ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzch;->zzc(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcj;->zztr()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuF()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvl$zze;->zzuK()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzch;->zzc(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
