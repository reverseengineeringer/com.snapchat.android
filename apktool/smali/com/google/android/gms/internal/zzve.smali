.class public Lcom/google/android/gms/internal/zzve;
.super Ljava/lang/Object;


# instance fields
.field private final zzaBM:Ljava/lang/Integer;

.field private final zzaBN:Ljava/lang/String;

.field private final zzaBO:Z

.field private final zzaxw:Ljava/lang/String;

.field private final zzazP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzve;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzl(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzve;->zzaxw:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzve;->zzaBM:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzve;->zzaBN:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzve;->zzaBO:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzve;->zzazP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzaxw:Ljava/lang/String;

    return-object v0
.end method

.method public zzuh()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzaBM:Ljava/lang/Integer;

    return-object v0
.end method

.method public zzui()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzaBN:Ljava/lang/String;

    return-object v0
.end method

.method public zzuj()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzaBN:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzve;->zzaBN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzve;->zzaxw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzaxw:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzuk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzve;->zzaBO:Z

    return v0
.end method

.method public zzul()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzve;->zzazP:Ljava/lang/String;

    return-object v0
.end method
