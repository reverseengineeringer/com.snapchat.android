.class public final Lcom/google/android/gms/internal/zzc$zzc;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzfu:[Lcom/google/android/gms/internal/zzc$zzc;


# instance fields
.field public zzfv:Ljava/lang/String;

.field public zzfw:J

.field public zzfx:J

.field public zzfy:Z

.field public zzfz:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzc;->zzg()Lcom/google/android/gms/internal/zzc$zzc;

    return-void
.end method

.method public static zzf()[Lcom/google/android/gms/internal/zzc$zzc;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzc$zzc;->zzfu:[Lcom/google/android/gms/internal/zzc$zzc;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzww;->zzaHL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzc;->zzfu:[Lcom/google/android/gms/internal/zzc$zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzc$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzc$zzc;->zzfu:[Lcom/google/android/gms/internal/zzc$zzc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzc;->zzfu:[Lcom/google/android/gms/internal/zzc$zzc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zzc;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzc;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzc;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzb(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzb(IJ)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzb(IJ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzc;->zzd(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzc;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zzc;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvw()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final zzg()Lcom/google/android/gms/internal/zzc$zzc;
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfv:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfw:J

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfx:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfy:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzfz:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzc;->zzaHM:I

    return-object p0
.end method
