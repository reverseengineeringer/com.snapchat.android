.class final Lbvx$2;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvx$c;

.field final synthetic b:Lbvx;


# direct methods
.method constructor <init>(Lbvx;Lbvx$c;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lbvx$2;->b:Lbvx;

    iput-object p2, p0, Lbvx$2;->a:Lbvx$c;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lbvx$2;->a:Lbvx$c;

    iget v0, v0, Lbvx$c;->n:F

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 334
    iget-object v1, p0, Lbvx$2;->a:Lbvx$c;

    iget v1, v1, Lbvx$c;->l:F

    iget-object v2, p0, Lbvx$2;->a:Lbvx$c;

    iget v2, v2, Lbvx$c;->m:F

    iget-object v3, p0, Lbvx$2;->a:Lbvx$c;

    iget v3, v3, Lbvx$c;->l:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 337
    iget-object v2, p0, Lbvx$2;->a:Lbvx$c;

    invoke-virtual {v2, v1}, Lbvx$c;->a(F)V

    .line 338
    iget-object v1, p0, Lbvx$2;->a:Lbvx$c;

    iget v1, v1, Lbvx$c;->n:F

    iget-object v2, p0, Lbvx$2;->a:Lbvx$c;

    iget v2, v2, Lbvx$c;->n:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    .line 340
    iget-object v1, p0, Lbvx$2;->a:Lbvx$c;

    invoke-virtual {v1, v0}, Lbvx$c;->c(F)V

    .line 341
    iget-object v0, p0, Lbvx$2;->a:Lbvx$c;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lbvx$c;->d(F)V

    .line 342
    return-void
.end method
