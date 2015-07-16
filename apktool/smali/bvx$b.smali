.class final Lbvx$b;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lbvx;

.field private b:Landroid/graphics/RadialGradient;

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I


# direct methods
.method public constructor <init>(Lbvx;II)V
    .locals 7

    .prologue
    .line 736
    iput-object p1, p0, Lbvx$b;->a:Lbvx;

    .line 737
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 738
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbvx$b;->d:Landroid/graphics/Paint;

    .line 739
    iput p2, p0, Lbvx$b;->c:I

    .line 740
    iput p3, p0, Lbvx$b;->e:I

    .line 741
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lbvx$b;->e:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lbvx$b;->e:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lbvx$b;->c:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lbvx$b;->b:Landroid/graphics/RadialGradient;

    .line 745
    iget-object v0, p0, Lbvx$b;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lbvx$b;->b:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 746
    return-void

    .line 741
    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    .prologue
    .line 750
    iget-object v0, p0, Lbvx$b;->a:Lbvx;

    invoke-virtual {v0}, Lbvx;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 751
    iget-object v1, p0, Lbvx$b;->a:Lbvx;

    invoke-virtual {v1}, Lbvx;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 752
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lbvx$b;->e:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lbvx$b;->c:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lbvx$b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 754
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lbvx$b;->e:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 755
    return-void
.end method
