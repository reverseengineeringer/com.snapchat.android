.class public abstract Lcom/google/android/gms/internal/zzvt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvt$zzb;,
        Lcom/google/android/gms/internal/zzvt$zza;
    }
.end annotation


# instance fields
.field private zzaCG:Lcom/google/android/gms/internal/zzvj;

.field private zzaCH:Lcom/google/android/gms/internal/zzvh;

.field private zzmW:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzkc()Lcom/google/android/gms/internal/zzlv;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzvt;-><init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzlv;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzlv;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvj;->zzun()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzO(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvt;->zzaCG:Lcom/google/android/gms/internal/zzvj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvt;->zzaCH:Lcom/google/android/gms/internal/zzvh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvt;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvt$zzb;
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzvk;)V
.end method

.method public zza(Lcom/google/android/gms/internal/zzvt$zza;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceManager: Failed to download a resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvt$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzZ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvt;->zzaCG:Lcom/google/android/gms/internal/zzvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvj;->zzun()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzve;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzvt;->zza(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvt$zzb;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzvt$zzb;->zzuP()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzvl$zzc;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzvt$zzb;->zzuP()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzvl$zzc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzvt$zzb;->zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzvt$zzb;->zzut()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;[BLcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/internal/zzvk$zza$zza;J)V

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzvk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzvk;-><init>(Lcom/google/android/gms/internal/zzvk$zza;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzvt;->zza(Lcom/google/android/gms/internal/zzvk;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzNq:Lcom/google/android/gms/common/api/Status;

    sget-object v3, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCf:Lcom/google/android/gms/internal/zzvk$zza$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvk$zza$zza;)V

    goto :goto_0
.end method

.method public zzo([B)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceManager: Resource downloaded from Network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvt;->zzaCG:Lcom/google/android/gms/internal/zzvj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbf;->zzab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvt;->zzaCG:Lcom/google/android/gms/internal/zzvj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzvj;->zzun()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzve;

    sget-object v4, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCf:Lcom/google/android/gms/internal/zzvk$zza$zza;

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzvt;->zzaCH:Lcom/google/android/gms/internal/zzvh;

    invoke-interface {v5, p1}, Lcom/google/android/gms/internal/zzvh;->zzn([B)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzvt;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v0

    if-nez v3, :cond_0

    const-string v5, "Parsed resource from network is null"

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzbf;->zzaa(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzvt;->zza(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvt$zzb;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzvt$zzb;->zzuP()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzvt$zzb;->zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzvt$zzb;->zzut()J
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzvl$zzg; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    move-wide v6, v0

    move-object v5, v4

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    check-cast v4, Lcom/google/android/gms/internal/zzvl$zzc;

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;[BLcom/google/android/gms/internal/zzvl$zzc;Lcom/google/android/gms/internal/zzvk$zza$zza;J)V

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/zzvk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzvk;-><init>(Lcom/google/android/gms/internal/zzvk$zza;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzvt;->zza(Lcom/google/android/gms/internal/zzvk;)V

    return-void

    :catch_0
    move-exception v5

    const-string v5, "Resource from network is corrupted"

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzbf;->zzaa(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzvt;->zza(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvt$zzb;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzvt$zzb;->zzuP()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzvt$zzb;->zzup()Lcom/google/android/gms/internal/zzvk$zza$zza;

    move-result-object v4

    move-wide v6, v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzvk$zza;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzNq:Lcom/google/android/gms/common/api/Status;

    sget-object v3, Lcom/google/android/gms/internal/zzvk$zza$zza;->zzaCf:Lcom/google/android/gms/internal/zzvk$zza$zza;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzvk$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvk$zza$zza;)V

    goto :goto_1

    :cond_2
    move-wide v6, v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_0
.end method
