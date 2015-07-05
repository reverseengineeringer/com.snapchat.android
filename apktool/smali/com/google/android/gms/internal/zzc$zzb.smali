.class public final Lcom/google/android/gms/internal/zzc$zzb;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzfp:[Lcom/google/android/gms/internal/zzc$zzb;


# instance fields
.field public name:I

.field public zzfq:[I

.field public zzfr:I

.field public zzfs:Z

.field public zzft:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzb;->zze()Lcom/google/android/gms/internal/zzc$zzb;

    return-void
.end method

.method public static zzd()[Lcom/google/android/gms/internal/zzc$zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzc$zzb;->zzfp:[Lcom/google/android/gms/internal/zzc$zzb;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzww;->zzaHL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzb;->zzfp:[Lcom/google/android/gms/internal/zzc$zzb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzc$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzc$zzb;->zzfp:[Lcom/google/android/gms/internal/zzc$zzb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzb;->zzfp:[Lcom/google/android/gms/internal/zzc$zzb;

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
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zzb;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzb;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzww;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzb;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzb;->zzc(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzb;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/zzwr;->zziw(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzb;
    .locals 5

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zzb;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvB()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zzip(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->getPosition()I

    move-result v2

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvG()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzwq;->zzir(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    if-nez v2, :cond_6

    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    array-length v2, v2

    goto :goto_4

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zziq(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final zze()Lcom/google/android/gms/internal/zzc$zzb;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHO:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfq:[I

    iput v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfr:I

    iput v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzfs:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzft:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzb;->zzaHM:I

    return-object p0
.end method
