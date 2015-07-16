.class final Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;
.super Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;)V
    .locals 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;

    iget-object v0, p1, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;-><init>(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;B)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4$1;->a:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;

    iget-object v0, v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$4;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    return-void
.end method
