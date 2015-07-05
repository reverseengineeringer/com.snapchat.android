.class public final Lcom/google/android/gms/internal/zzc$zzd;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzfA:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzfB:[Lcom/google/android/gms/internal/zzd$zza;

.field public zzfC:[Lcom/google/android/gms/internal/zzc$zzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzd;->zzh()Lcom/google/android/gms/internal/zzc$zzd;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zzd;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zzd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzd;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzd;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzd;->zze(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzd;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    array-length v2, v2

    if-lez v2, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzd;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zzd;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzc$zzc;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/zzc$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzc$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/zzc$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzc$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zzh()Lcom/google/android/gms/internal/zzc$zzd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfA:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzd$zza;->zzr()[Lcom/google/android/gms/internal/zzd$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfB:[Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {}, Lcom/google/android/gms/internal/zzc$zzc;->zzf()[Lcom/google/android/gms/internal/zzc$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzfC:[Lcom/google/android/gms/internal/zzc$zzc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzd;->zzaHM:I

    return-object p0
.end method
