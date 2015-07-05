.class public final Lcom/google/android/gms/internal/zzd$zza;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzd$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzgu:[Lcom/google/android/gms/internal/zzd$zza;


# instance fields
.field public type:I

.field public zzgA:Ljava/lang/String;

.field public zzgB:J

.field public zzgC:Z

.field public zzgD:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzgE:[I

.field public zzgF:Z

.field public zzgv:Ljava/lang/String;

.field public zzgw:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzgx:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzgy:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzgz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzd$zza;->zzs()Lcom/google/android/gms/internal/zzd$zza;

    return-void
.end method

.method public static zzr()[Lcom/google/android/gms/internal/zzd$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzd$zza;->zzgu:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzww;->zzaHL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzd$zza;->zzgu:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzd$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzd$zza;->zzgu:[Lcom/google/android/gms/internal/zzd$zza;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzd$zza;->zzgu:[Lcom/google/android/gms/internal/zzd$zza;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzd$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    iget v2, p1, Lcom/google/android/gms/internal/zzd$zza;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzd$zza;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v1, v4

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzww;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    if-eqz v1, :cond_4

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzd$zza;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_8
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzb(IJ)V

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v2, v2

    if-ge v0, v2, :cond_b

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_d

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v0, v0, v1

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzd$zza;->zzl(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_7

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    move v0, v2

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/zzwr;->zzd(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    if-eqz v2, :cond_d

    const/16 v2, 0x9

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v2, v2

    if-lez v2, :cond_f

    move v2, v1

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    aget v4, v4, v2

    invoke-static {v4}, Lcom/google/android/gms/internal/zzwr;->zziw(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_11

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v1, v2, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v1

    if-eqz v2, :cond_10

    const/16 v3, 0xb

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    if-eqz v1, :cond_12

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    return v0
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzd$zza;
    .locals 7

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzd$zza;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvw()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x50

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v4

    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    :goto_7
    if-ge v3, v4, :cond_b

    if-eqz v3, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    move v0, v2

    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_7

    :pswitch_1
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_8

    :cond_b
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    if-nez v0, :cond_c

    move v0, v1

    :goto_9
    if-nez v0, :cond_d

    if-ne v2, v4, :cond_d

    iput-object v5, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v0, v0

    goto :goto_9

    :cond_d
    add-int v3, v0, v2

    new-array v3, v3, [I

    if-eqz v0, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zzip(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->getPosition()I

    move-result v2

    move v0, v1

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvG()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_a

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_f
    if-eqz v0, :cond_13

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzwq;->zzir(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    if-nez v2, :cond_11

    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    new-array v4, v0, [I

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvG()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v5

    packed-switch v5, :pswitch_data_3

    goto :goto_c

    :pswitch_3
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_c

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    array-length v2, v2

    goto :goto_b

    :cond_12
    iput-object v4, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    :cond_13
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zziq(I)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_15

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_14

    iget-object v3, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_16

    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_d

    :cond_16
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final zzs()Lcom/google/android/gms/internal/zzd$zza;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd$zza;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgv:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgw:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgx:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgy:[Lcom/google/android/gms/internal/zzd$zza;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgz:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgA:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgB:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgC:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgD:[Lcom/google/android/gms/internal/zzd$zza;

    sget-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgE:[I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzd$zza;->zzgF:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzd$zza;->zzaHM:I

    return-object p0
.end method
