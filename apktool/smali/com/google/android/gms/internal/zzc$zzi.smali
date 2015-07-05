.class public final Lcom/google/android/gms/internal/zzc$zzi;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zzi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzgo:[Lcom/google/android/gms/internal/zzc$zzi;


# instance fields
.field public name:Ljava/lang/String;

.field public zzgp:Lcom/google/android/gms/internal/zzd$zza;

.field public zzgq:Lcom/google/android/gms/internal/zzc$zzd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzi;->zzp()Lcom/google/android/gms/internal/zzc$zzi;

    return-void
.end method

.method public static zzo()[Lcom/google/android/gms/internal/zzc$zzi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzc$zzi;->zzgo:[Lcom/google/android/gms/internal/zzc$zzi;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zzww;->zzaHL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzi;->zzgo:[Lcom/google/android/gms/internal/zzc$zzi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzc$zzi;

    sput-object v0, Lcom/google/android/gms/internal/zzc$zzi;->zzgo:[Lcom/google/android/gms/internal/zzc$zzi;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzc$zzi;->zzgo:[Lcom/google/android/gms/internal/zzc$zzi;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zzi;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zzi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzi;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzd$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzc$zzd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zzi;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzd$zza;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzc$zzd;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zza(ILcom/google/android/gms/internal/zzwy;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zzi;->zzj(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzi;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzj(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzc(ILcom/google/android/gms/internal/zzwy;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zzi;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zzi;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzd$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzd$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzc$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzc$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzwq;->zza(Lcom/google/android/gms/internal/zzwy;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final zzp()Lcom/google/android/gms/internal/zzc$zzi;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgp:Lcom/google/android/gms/internal/zzd$zza;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzgq:Lcom/google/android/gms/internal/zzc$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zzi;->zzaHM:I

    return-object p0
.end method
