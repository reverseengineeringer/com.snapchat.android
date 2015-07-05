.class Lcom/google/android/gms/tagmanager/zzco$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzco$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzco;->zza(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/zzcn;)Lcom/google/android/gms/tagmanager/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAi:Lcom/google/android/gms/tagmanager/zzco;

.field final synthetic zzaAj:Ljava/util/Map;

.field final synthetic zzaAk:Ljava/util/Map;

.field final synthetic zzaAl:Ljava/util/Map;

.field final synthetic zzaAm:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzco;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAi:Lcom/google/android/gms/tagmanager/zzco;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAj:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAk:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAl:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAm:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAk:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcj;->zzto()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzch;->zzc(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzco$3;->zzaAm:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/zzcj;->zztp()Lcom/google/android/gms/tagmanager/zzch;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/zzch;->zzc(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method
