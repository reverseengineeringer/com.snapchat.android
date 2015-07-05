.class Lcom/google/android/gms/analytics/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/zzq;


# instance fields
.field private final zzAM:Lcom/google/android/gms/internal/zzra;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzai;->zzAM:Lcom/google/android/gms/internal/zzra;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zzai;->zzgC()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaj(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "&sr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected zzgC()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzai;->zzAM:Lcom/google/android/gms/internal/zzra;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzra;->zzqV()Lcom/google/android/gms/internal/zzrg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrg;->zzrb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrg;->zzrc()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
