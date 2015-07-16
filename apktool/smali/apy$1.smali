.class public final Lapy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapy;


# direct methods
.method public constructor <init>(Lapy;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lapy$1;->a:Lapy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lapy$1;->a:Lapy;

    iget-boolean v0, v0, Lapy;->g:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lapy$1;->a:Lapy;

    iget-object v0, v0, Lapy;->a:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

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
