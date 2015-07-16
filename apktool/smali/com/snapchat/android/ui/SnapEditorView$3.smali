.class final Lcom/snapchat/android/ui/SnapEditorView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Mediabryo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/model/Mediabryo;

.field final synthetic c:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;ILcom/snapchat/android/model/Mediabryo;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->c:Lcom/snapchat/android/ui/SnapEditorView;

    iput p2, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->a:I

    iput-object p3, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->b:Lcom/snapchat/android/model/Mediabryo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Laok;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget v4, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 504
    iget v2, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->a:I

    if-lez v2, :cond_0

    .line 505
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->c:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 510
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$3;->c:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/ui/SnapEditorView$3$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/SnapEditorView$3$1;-><init>(Lcom/snapchat/android/ui/SnapEditorView$3;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/ui/SnapVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
