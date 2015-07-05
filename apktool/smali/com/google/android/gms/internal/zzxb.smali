.class public final Lcom/google/android/gms/internal/zzxb;
.super Ljava/lang/Object;


# static fields
.field public static final zzaHO:[I

.field public static final zzaHP:[J

.field public static final zzaHQ:[F

.field public static final zzaHR:[D

.field public static final zzaHS:[Z

.field public static final zzaHT:[Ljava/lang/String;

.field public static final zzaHU:[[B

.field public static final zzaHV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHO:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHP:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHQ:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHR:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHS:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHT:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHU:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzxb;->zzaHV:[B

    return-void
.end method

.method static zzD(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzwq;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwq;->zzin(I)Z

    move-result v0

    return v0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzwq;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzwq;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwq;->zzin(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzwq;->zzvu()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzwq;->zzin(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzwq;->zzir(I)V

    return v0
.end method

.method static zziH(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zziI(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
