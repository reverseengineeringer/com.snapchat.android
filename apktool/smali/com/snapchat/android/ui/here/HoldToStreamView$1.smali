.class final Lcom/snapchat/android/ui/here/HoldToStreamView$1;
.super Lbi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V
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
    .line 239
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Lbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbj;)V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    iget-object v1, p1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->a:D

    double-to-float v1, v2

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v2, v2, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v1, p1, Lbj;->d:Lbj$a;

    iget-wide v2, v1, Lbj$a;->a:D

    double-to-float v1, v2

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v2, v2, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setX(F)V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    iget-object v0, v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$1;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    goto :goto_0
.end method
