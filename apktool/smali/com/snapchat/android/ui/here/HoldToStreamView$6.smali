.class final Lcom/snapchat/android/ui/here/HoldToStreamView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 645
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    const v1, 0x3eb33334    # 0.35000002f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->b(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_0
.end method
