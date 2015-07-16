.class final Lcom/snapchat/android/ui/here/HoldToStreamView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$4;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$4;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$4;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 1133
    :cond_0
    return-void
.end method
