.class public final Lauq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static coefficients:[F

.field private static final lhmatrix:[F

.field private static xvector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lauq;->lhmatrix:[F

    .line 13
    new-array v0, v1, [F

    sput-object v0, Lauq;->xvector:[F

    .line 14
    new-array v0, v1, [F

    sput-object v0, Lauq;->coefficients:[F

    return-void

    .line 8
    nop

    :array_0
    .array-data 4
        0x0
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x3f800000    # 1.0f
        0x0
        -0x3fe00000    # -2.5f
        0x3fc00000    # 1.5f
        0x0
        0x3f000000    # 0.5f
        0x40000000    # 2.0f
        -0x40400000    # -1.5f
        0x0
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public static a(FFF)F
    .locals 2

    .prologue
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method
