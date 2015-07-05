.class Lcom/google/android/gms/internal/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzn;


# instance fields
.field private zzlb:Lcom/google/android/gms/internal/zzwr;

.field private zzlc:[B

.field private final zzld:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzp;->zzld:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzp;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzp;->zzld:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlc:[B

    iget-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlc:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzwr;->zzu([B)Lcom/google/android/gms/internal/zzwr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlb:Lcom/google/android/gms/internal/zzwr;

    return-void
.end method

.method public zzD()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlb:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwr;->zzvJ()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlc:[B

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzp;->zzlc:[B

    array-length v1, v1

    sub-int v0, v1, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzp;->zzlc:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public zzb(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlb:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzwr;->zzb(IJ)V

    return-void
.end method

.method public zzb(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzp;->zzlb:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzwr;->zzb(ILjava/lang/String;)V

    return-void
.end method
