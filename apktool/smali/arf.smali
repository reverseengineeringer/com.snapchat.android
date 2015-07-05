.class public final Larf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[F

.field public final b:[I

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-array v0, v1, [F

    iput-object v0, p0, Larf;->a:[F

    .line 10
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Larf;->b:[I

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Larf;->g:Z

    return-void

    .line 10
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Larf;->b:[I

    iget v1, p0, Larf;->f:I

    aput v1, v0, p1

    .line 96
    iget-object v0, p0, Larf;->a:[F

    iget v1, p0, Larf;->c:F

    aput v1, v0, p1

    .line 97
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 51
    iget-object v2, p0, Larf;->b:[I

    aget v2, v2, v1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Larf;->b:[I

    aget v2, v2, v0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
