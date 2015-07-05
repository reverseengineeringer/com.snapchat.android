.class Lcom/google/android/gms/tagmanager/zzbd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzcc;


# instance fields
.field private final zzEI:J

.field private final zzEJ:I

.field private zzEK:D

.field private zzEL:J

.field private final zzEM:Ljava/lang/Object;

.field private final zzazf:J

.field private final zzmW:Lcom/google/android/gms/internal/zzlv;

.field private final zzrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/zzlv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEM:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEJ:I

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEJ:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEI:J

    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzazf:J

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzrc:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzmW:Lcom/google/android/gms/internal/zzlv;

    return-void
.end method


# virtual methods
.method public zzgv()Z
    .locals 12

    const/4 v0, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzmW:Lcom/google/android/gms/internal/zzlv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlv;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEL:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzazf:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Excessive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbf;->zzac(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEJ:I

    int-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEL:J

    sub-long v4, v2, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEI:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    iget v6, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEJ:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    add-double/2addr v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEL:J

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    cmpl-double v2, v2, v10

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    sub-double/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzEK:D

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Excessive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzbd;->zzrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " detected; call ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbf;->zzac(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
