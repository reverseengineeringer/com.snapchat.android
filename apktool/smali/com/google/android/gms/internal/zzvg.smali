.class public Lcom/google/android/gms/internal/zzvg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzvg$zzc;,
        Lcom/google/android/gms/internal/zzvg$zza;,
        Lcom/google/android/gms/internal/zzvg$zzb;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaBP:Lcom/google/android/gms/internal/zzvn;

.field zzaBQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzvg$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzvl$zzc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzaBR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;"
        }
    .end annotation
.end field

.field private zzaya:Ljava/lang/String;

.field private final zzmW:Lcom/google/android/gms/internal/zzlv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzvn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzvn;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzlx;->zzkc()Lcom/google/android/gms/internal/zzlv;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzvg;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzvn;Lcom/google/android/gms/internal/zzlv;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzvn;Lcom/google/android/gms/internal/zzlv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzvv;",
            ">;",
            "Lcom/google/android/gms/internal/zzvn;",
            "Lcom/google/android/gms/internal/zzlv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaya:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaBQ:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvg;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzvg;->zzmW:Lcom/google/android/gms/internal/zzlv;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzvg;->zzaBP:Lcom/google/android/gms/internal/zzvn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvg;->zzaBR:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzvg;)Lcom/google/android/gms/internal/zzvn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaBP:Lcom/google/android/gms/internal/zzvn;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvg$zza;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvj;->zzun()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzO(Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzve;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaBP:Lcom/google/android/gms/internal/zzvn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzve;->zzuj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzve;->zzuh()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzvi;->zzaBX:Lcom/google/android/gms/internal/zzvh;

    new-instance v4, Lcom/google/android/gms/internal/zzvg$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/zzvg$1;-><init>(Lcom/google/android/gms/internal/zzvg;Lcom/google/android/gms/internal/zzve;Lcom/google/android/gms/internal/zzvg$zza;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzvn;->zza(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvm;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvg$zza;Lcom/google/android/gms/internal/zzvt;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvj;->zzun()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzve;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg;->zzaBQ:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzve;->getContainerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzvg$zzc;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzvg$zzc;->zzum()J

    move-result-wide v0

    :goto_1
    const-wide/32 v4, 0xdbba0

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzvg;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg;->zzaBP:Lcom/google/android/gms/internal/zzvn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzve;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzvn;->zzdD(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaBR:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvj;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzvv;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvg;->zzaya:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzvv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvv;-><init>()V

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg;->zzaBR:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvj;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzvg;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzvv;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzvj;JLcom/google/android/gms/internal/zzvt;)V

    :goto_5
    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzvv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzvg;->zzaya:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzvv;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvg$zza;)V

    goto :goto_5

    :cond_4
    move-object v1, v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method zza(Lcom/google/android/gms/internal/zzvk$zza;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvk$zza;->zzur()Lcom/google/android/gms/internal/zzve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzve;->getContainerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvk$zza;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzvk$zza;->zzus()Lcom/google/android/gms/internal/zzvl$zzc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvg;->zzaBQ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvg;->zzaBQ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzvg$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzvg;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzvg$zzc;->zzJ(J)V

    sget-object v3, Lcom/google/android/gms/common/api/Status;->zzNo:Lcom/google/android/gms/common/api/Status;

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzvg$zzc;->zzaO(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzvg$zzc;->zzD(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzvg;->zzaBQ:Ljava/util/Map;

    new-instance v4, Lcom/google/android/gms/internal/zzvg$zzc;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzvg;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/google/android/gms/internal/zzvg$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/internal/zzvg$zza;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvj;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/zzve;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzvj;->zzb(Lcom/google/android/gms/internal/zzve;)Lcom/google/android/gms/internal/zzvj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzvg$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzvi;->zzaBX:Lcom/google/android/gms/internal/zzvh;

    invoke-direct {v1, p0, v0, v2, p4}, Lcom/google/android/gms/internal/zzvg$zzb;-><init>(Lcom/google/android/gms/internal/zzvg;Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvh;Lcom/google/android/gms/internal/zzvg$zza;)V

    invoke-virtual {p0, v0, p4, v1}, Lcom/google/android/gms/internal/zzvg;->zza(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvg$zza;Lcom/google/android/gms/internal/zzvt;)V

    return-void
.end method

.method public zzdx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzvg;->zzaya:Ljava/lang/String;

    return-void
.end method
