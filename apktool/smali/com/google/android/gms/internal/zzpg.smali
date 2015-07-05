.class public Lcom/google/android/gms/internal/zzpg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzph;

.field static final zzang:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mTag:Ljava/lang/String;

.field private final zzFG:I

.field zzabx:Lcom/google/android/gms/location/LocationRequest;

.field zzanh:Z

.field zzani:Z

.field zzanj:Z

.field zzank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->zzang:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/zzph;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzph;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzpg;->CREATOR:Lcom/google/android/gms/internal/zzph;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/location/LocationRequest;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzox;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzpg;->zzFG:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpg;->zzabx:Lcom/google/android/gms/location/LocationRequest;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzpg;->zzanh:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzpg;->zzani:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzpg;->zzanj:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzpg;->zzank:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v6, Lcom/google/android/gms/internal/zzpg;->zzang:Ljava/util/List;

    move-object v0, p0

    move-object v2, p2

    move v4, v1

    move v5, v1

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzpg;-><init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzpg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzpg;-><init>(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzpg;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/zzpg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzpg;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzpg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->zzabx:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpg;->zzabx:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzanh:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzpg;->zzanh:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzani:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzpg;->zzani:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzanj:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzpg;->zzanj:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->zzank:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzpg;->zzank:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzpg;->zzFG:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->zzabx:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->zzabx:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestNlpDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzanh:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " restorePendingIntentListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzani:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " triggerUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpg;->zzanj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->zzank:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpg;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzph;->zza(Lcom/google/android/gms/internal/zzpg;Landroid/os/Parcel;I)V

    return-void
.end method
