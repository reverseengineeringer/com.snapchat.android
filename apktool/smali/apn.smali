.class public final Lapn;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 27
    iput-object p1, p0, Lapn;->a:Landroid/view/View;

    .line 28
    return-void
.end method

.method static synthetic a(Lapn;)Landroid/view/View;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lapn;->a:Landroid/view/View;

    return-object v0
.end method

.method public static a()Landroid/view/animation/ScaleAnimation;
    .locals 4

    .prologue
    const v2, 0x3fcccccd    # 1.6f

    const v1, 0x3fa66666    # 1.3f

    .line 58
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v2, v1, v2, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 60
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 61
    return-object v0
.end method

.method public static a(I)Landroid/view/animation/TranslateAnimation;
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 50
    int-to-float v0, p0

    const v1, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v1

    int-to-float v1, p0

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 51
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    div-float v2, v0, v4

    div-float/2addr v0, v4

    invoke-direct {v1, v3, v2, v3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 53
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 54
    return-object v1
.end method
