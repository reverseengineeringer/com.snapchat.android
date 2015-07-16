.class final Lcom/snapchat/android/discover/ui/DSnapView$3;
.super Lawh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$3;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Lawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$3;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    iget-object v1, v0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/discover/ui/DSnapView;->c:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/discover/ui/DSnapView;->i:Z

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getCurrentPanel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapView;->d(I)V

    .line 468
    return-void
.end method
