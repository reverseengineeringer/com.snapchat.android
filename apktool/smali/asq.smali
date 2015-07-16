.class public final Lasq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;FFF)V
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    float-to-int v0, p1

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method public static a(Lasu;IIFII)V
    .locals 4

    .prologue
    .line 51
    invoke-interface {p0, p5}, Lasu;->a(I)Lasm;

    move-result-object v0

    invoke-virtual {v0}, Lasm;->d()Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-interface {p0, p4}, Lasu;->a(I)Lasm;

    move-result-object v1

    invoke-virtual {v1}, Lasm;->d()Landroid/view/View;

    move-result-object v1

    .line 53
    int-to-float v2, p1

    sub-float v2, p3, v2

    int-to-float v3, p2

    invoke-static {v1, v2, p3, v3}, Lasq;->a(Landroid/view/View;FFF)V

    .line 54
    int-to-float v1, p1

    add-float/2addr v1, p3

    int-to-float v2, p2

    invoke-static {v0, p3, v1, v2}, Lasq;->a(Landroid/view/View;FFF)V

    .line 55
    return-void
.end method

.method public static a(Lasu;III)V
    .locals 4

    .prologue
    .line 45
    invoke-interface {p0, p3}, Lasu;->a(I)Lasm;

    move-result-object v0

    invoke-virtual {v0}, Lasm;->d()Landroid/view/View;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v1, v2, v3}, Lasq;->a(Landroid/view/View;FFF)V

    .line 47
    return-void
.end method
