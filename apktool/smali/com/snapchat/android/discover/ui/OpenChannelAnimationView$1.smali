.class public final Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->setBackgroundColor(I)V

    .line 99
    return-void
.end method
