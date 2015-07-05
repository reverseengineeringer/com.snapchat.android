.class final Lcom/snapchat/android/ui/SnapEditorView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/SnapEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Z

.field final synthetic c:Landroid/view/ViewTreeObserver;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;Landroid/os/Bundle;ZLandroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->e:Lcom/snapchat/android/ui/SnapEditorView;

    iput-object p2, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->a:Landroid/os/Bundle;

    iput-boolean p3, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->b:Z

    iput-object p4, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->c:Landroid/view/ViewTreeObserver;

    iput-object p5, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->e:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->e(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->a:Landroid/os/Bundle;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;Z)V

    .line 689
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->c:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->c:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->e:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->f(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 693
    const/4 v0, 0x0

    return v0
.end method
