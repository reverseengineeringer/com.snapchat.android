.class public final Lxe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v0, v0, Lov;->mResolution:Laue;

    invoke-virtual {v0}, Laue;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lxe;-><init>(I)V

    .line 15
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lxe;->a:I

    .line 20
    return-void
.end method


# virtual methods
.method public final a(II)F
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lxe;->a:I

    div-int v0, p2, v0

    .line 30
    iget v1, p0, Lxe;->a:I

    rem-int v1, p2, v1

    .line 31
    if-ne p1, v0, :cond_0

    .line 32
    iget v0, p0, Lxe;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lxe;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    int-to-float v0, v1

    iget v1, p0, Lxe;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
