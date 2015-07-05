.class public final Lcom/google/android/gms/internal/zzc$zza;
.super Lcom/google/android/gms/internal/zzws;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzws",
        "<",
        "Lcom/google/android/gms/internal/zzc$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public level:I

.field public zzfn:I

.field public zzfo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzws;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zza;->zzb()Lcom/google/android/gms/internal/zzc$zza;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/zzc$zza;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzc$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zza;->level:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    iget v2, p1, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zza;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzc$zza;->zzvL()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zza;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzc$zza;->zza(Lcom/google/android/gms/internal/zzwq;I)Z

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
    iput v0, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzwq;->zzvx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzwr;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzwr;->zzy(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzwr;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/zzc$zza;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    iput v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    iput v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzaHB:Lcom/google/android/gms/internal/zzwu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzc$zza;->zzaHM:I

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzwy;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzc$zza;->zza(Lcom/google/android/gms/internal/zzwq;)Lcom/google/android/gms/internal/zzc$zza;

    move-result-object v0

    return-object v0
.end method

.method protected final zzc()I
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzws;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->level:I

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfn:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzc$zza;->zzfo:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzwr;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method
