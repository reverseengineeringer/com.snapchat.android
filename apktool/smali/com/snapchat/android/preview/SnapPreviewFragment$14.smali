.class final Lcom/snapchat/android/preview/SnapPreviewFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$14;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$14;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$14;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$14;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f()V

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$14;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Z)V

    goto :goto_0
.end method
