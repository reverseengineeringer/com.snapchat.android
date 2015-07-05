.class public final Lcom/google/android/gms/internal/zzc$zze;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zze;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzfD:[Lcom/google/android/gms/internal/zzc$zze;


# instance fields
.field public key:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zze;->zzj()Lcom/google/android/gms/internal/zzc$zze;

    return-void
.end method

.method public static zzi()[Lcom/google/android/gms/internal/zzc$zze;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzc$zze;->zzfD:[Lcom/google/android/gms/internal/zzc$zze;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzww;->zzaHL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzc$zze;->zzfD:[Lcom/google/android/gms/internal/zzc$zze;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzc$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzc$zze;->zzfD:[Lcom/google/android/gms/internal/zzc$zze;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzc$zze;->zzfD:[Lcom/google/android/gms/internal/zzc$zze;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zze;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zze;

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zze;->key:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zze;->value:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zze;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zze;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zze;->zzf(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zze;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zze;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zze;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final zzj()Lcom/google/android/gms/internal/zzc$zze;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zze;->key:I

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zze;->value:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zze;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zze;->zzaHM:I

    return-object p0
.end method
