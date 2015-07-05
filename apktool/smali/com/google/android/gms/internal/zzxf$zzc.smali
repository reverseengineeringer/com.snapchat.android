.class public final Lcom/google/android/gms/internal/zzxf$zzc;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzxf$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzaIU:[B

.field public zzaIV:[[B

.field public zzaIW:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxf$zzc;->zzwq()Lcom/google/android/gms/internal/zzxf$zzc;

    return-void
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzxf$zzc;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzxf$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    iget-object v2, p1, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->zza([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzxf$zzc;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzww;->zza([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzxf$zzc;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final zzM(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzxf$zzc;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzxf$zzc;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    sget-object v1, Lcom/google/android/gms/internal/zzxb;->zzaHV:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzwr;->zza(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(IZ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzxf$zzc;->zzM(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzxf$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    sget-object v3, Lcom/google/android/gms/internal/zzxb;->zzaHV:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzwr;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzwr;->zzw([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public final zzwq()Lcom/google/android/gms/internal/zzxf$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHV:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIU:[B

    sget-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHU:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIV:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaIW:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzxf$zzc;->zzaHM:I

    return-object p0
.end method
