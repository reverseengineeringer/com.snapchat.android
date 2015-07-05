.class public final Lapc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapc;


# direct methods
.method public constructor <init>(Lapc;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lapc$1;->a:Lapc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lapc$1;->a:Lapc;

    iget-boolean v0, v0, Lapc;->g:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lapc$1;->a:Lapc;

    iget-object v0, v0, Lapc;->a:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    iget-object v1, v0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SelfScalingImageView;->setVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Z

    .line 92
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
