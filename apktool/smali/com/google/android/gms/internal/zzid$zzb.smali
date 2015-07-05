.class Lcom/google/android/gms/internal/zzid$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic zzzZ:Lcom/google/android/gms/internal/zzid;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid$zzb;->zzzZ:Lcom/google/android/gms/internal/zzid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzid;Lcom/google/android/gms/internal/zzid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzid$zzb;-><init>(Lcom/google/android/gms/internal/zzid;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzic;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzic;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "start"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid$zzb;->zzzZ:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zza(Lcom/google/android/gms/internal/zzid;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "stop"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid$zzb;->zzzZ:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zzb(Lcom/google/android/gms/internal/zzid;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "cancel"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid$zzb;->zzzZ:Lcom/google/android/gms/internal/zzid;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzid;->zzc(Lcom/google/android/gms/internal/zzid;)V

    goto :goto_0
.end method
