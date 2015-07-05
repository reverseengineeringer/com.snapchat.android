.class public Lcom/google/android/gms/internal/zzox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/zzoy;


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I

.field private final zzFG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzoy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzoy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzox;->CREATOR:Lcom/google/android/gms/internal/zzoy;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzox;->zzFG:I

    iput p2, p0, Lcom/google/android/gms/internal/zzox;->uid:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzox;->packageName:Ljava/lang/String;

    return-void
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

    instance-of v1, p1, Lcom/google/android/gms/internal/zzox;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzox;

    iget v1, p1, Lcom/google/android/gms/internal/zzox;->uid:I

    iget v2, p0, Lcom/google/android/gms/internal/zzox;->uid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzox;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzox;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzox;->zzFG:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzox;->uid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%d:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/zzox;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzox;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzoy;->zza(Lcom/google/android/gms/internal/zzox;Landroid/os/Parcel;I)V

    return-void
.end method
