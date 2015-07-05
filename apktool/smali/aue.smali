.class public final Laue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HIGH_QUALITY_CUTOFF:I = 0x2d0

.field private static final SIMILARITY_THRESHOLD:D = 0.02


# instance fields
.field protected final mHeight:I

.field protected final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Laue;->mWidth:I

    .line 13
    iput p2, p0, Laue;->mHeight:I

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Laue;->mWidth:I

    return v0
.end method

.method public final a(D)Laue;
    .locals 5

    .prologue
    .line 21
    new-instance v0, Laue;

    iget v1, p0, Laue;->mWidth:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    iget v2, p0, Laue;->mHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Laue;-><init>(II)V

    return-object v0
.end method

.method public final a(Laue;)Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Laue;->mHeight:I

    iget v1, p1, Laue;->mHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Laue;->mWidth:I

    iget v1, p1, Laue;->mWidth:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Laue;->mWidth:I

    iget v1, p1, Laue;->mHeight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Laue;->mHeight:I

    iget v1, p1, Laue;->mWidth:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Laue;->mHeight:I

    return v0
.end method

.method public final b(Laue;)Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Laue;->mHeight:I

    iget v1, p1, Laue;->mHeight:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Laue;->mWidth:I

    iget v1, p1, Laue;->mWidth:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Laue;->mWidth:I

    iget v1, p1, Laue;->mHeight:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Laue;->mHeight:I

    iget v1, p1, Laue;->mWidth:I

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()D
    .locals 4

    .prologue
    .line 43
    iget v0, p0, Laue;->mWidth:I

    int-to-double v0, v0

    iget v2, p0, Laue;->mHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Laue;->mWidth:I

    iget v1, p0, Laue;->mHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    const/16 v1, 0x2d0

    .line 51
    iget v0, p0, Laue;->mHeight:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Laue;->mWidth:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    instance-of v1, p1, Laue;

    if-nez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    check-cast p1, Laue;

    .line 39
    iget v1, p0, Laue;->mWidth:I

    iget v2, p1, Laue;->mWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Laue;->mHeight:I

    iget v2, p1, Laue;->mHeight:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Laue;->mWidth:I

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget v1, p0, Laue;->mWidth:I

    add-int/2addr v0, v1

    return v0
.end method
