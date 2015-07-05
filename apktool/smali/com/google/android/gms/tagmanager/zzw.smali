.class Lcom/google/android/gms/tagmanager/zzw;
.super Lcom/google/android/gms/tagmanager/zzdc;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final VALUE:Ljava/lang/String;

.field private static final zzayx:Ljava/lang/String;


# instance fields
.field private final zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zza;->zzah:Lcom/google/android/gms/internal/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zza;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->ID:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzb;->zzff:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->VALUE:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzb;->zzbS:Lcom/google/android/gms/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzb;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->zzayx:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/zzw;->VALUE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzdc;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzd$zza;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zztZ()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzde;->zzg(Lcom/google/android/gms/internal/zzd$zza;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zzue()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->zzcU(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzb(Lcom/google/android/gms/internal/zzd$zza;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzde;->zztZ()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzde;->zzl(Lcom/google/android/gms/internal/zzd$zza;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaxx:Lcom/google/android/gms/tagmanager/DataLayer;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public zzJ(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzd$zza;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->VALUE:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzb(Lcom/google/android/gms/internal/zzd$zza;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->zzayx:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zza(Lcom/google/android/gms/internal/zzd$zza;)V

    return-void
.end method
