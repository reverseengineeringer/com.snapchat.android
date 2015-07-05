.class public final Lcom/google/android/gms/internal/zzc$zzj;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zzj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

.field public zzgs:Lcom/google/android/gms/internal/zzc$zzf;

.field public zzgt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzj;->zzq()Lcom/google/android/gms/internal/zzc$zzj;

    return-void
.end method

.method public static zzb([B)Lcom/google/android/gms/internal/zzc$zzj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzc$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzc$zzj;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzwy;->zza(Lcom/google/android/gms/internal/zzwy;[B)Lcom/google/android/gms/internal/zzwy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzc$zzj;

    return-object v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zzj;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zzj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzww;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzj;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzc$zzf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzww;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzj;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzc$zzf;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzj;->zzk(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzj;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzj;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zzj;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzxb;->zzc(Lcom/google/android/gms/internal/zzwq;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzc$zzi;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzc$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzc$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/zzc$zzi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzc$zzi;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/zzc$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzc$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zzq()Lcom/google/android/gms/internal/zzc$zzj;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzc$zzi;->zzo()[Lcom/google/android/gms/internal/zzc$zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgr:[Lcom/google/android/gms/internal/zzc$zzi;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgs:Lcom/google/android/gms/internal/zzc$zzf;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzgt:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzj;->zzaHM:I

    return-object p0
.end method
