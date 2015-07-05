.class final Lcom/snapchat/android/ui/SnapEditorView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 487
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$2$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView$2$1;-><init>(Lcom/snapchat/android/ui/SnapEditorView$2;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)V

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->requestLayout()V

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapEditorView;->d(Lcom/snapchat/android/ui/SnapEditorView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setAudible(Z)V

    .line 496
    return-void
.end method
