.class public final Lasb;
.super Larn;
.source "SourceFile"


# instance fields
.field public final b:Laiv;

.field private final c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;


# direct methods
.method public constructor <init>(Laiv;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Larn;-><init>()V

    .line 24
    iput-object p1, p0, Lasb;->b:Laiv;

    .line 25
    iput-object p2, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geofilter~"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lasb;->b:Laiv;

    iget-object v1, v1, Laiv;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->setVisibilityOfPreviewOnlyContent(I)V

    .line 68
    return-void
.end method

.method public final b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->GEOFILTER:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lasb;->b:Laiv;

    iget-boolean v0, v0, Laiv;->mIsSponsored:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    iget-object v1, v0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lapc;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lapc;->f:Ljava/util/Date;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    iget-object v2, v0, Lapc;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lapc;->e:Landroid/view/animation/Animation;

    iget-object v1, v0, Lapc;->e:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, v0, Lapc;->e:Landroid/view/animation/Animation;

    iget v2, v0, Lapc;->d:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, v0, Lapc;->e:Landroid/view/animation/Animation;

    new-instance v2, Lapc$1;

    invoke-direct {v2, v0}, Lapc$1;-><init>(Lapc;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v0, Lapc;->e:Landroid/view/animation/Animation;

    iget-wide v2, v0, Lapc;->c:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, v0, Lapc;->b:Landroid/view/View;

    iget-object v2, v0, Lapc;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lapc;->g:Z

    .line 52
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lasb;->b:Laiv;

    iget-boolean v0, v0, Laiv;->mIsSponsored:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a()V

    .line 59
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lasb;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a()V

    .line 76
    return-void
.end method
