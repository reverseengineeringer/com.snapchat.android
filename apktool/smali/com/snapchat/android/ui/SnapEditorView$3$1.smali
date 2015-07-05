.class final Lcom/snapchat/android/ui/SnapEditorView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView$3;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapEditorView$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView$3;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$3$1;->a:Lcom/snapchat/android/ui/SnapEditorView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$3$1;->a:Lcom/snapchat/android/ui/SnapEditorView$3;

    iget-object v0, v0, Lcom/snapchat/android/ui/SnapEditorView$3;->c:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$3$1;->a:Lcom/snapchat/android/ui/SnapEditorView$3;

    iget-object v1, v1, Lcom/snapchat/android/ui/SnapEditorView$3;->b:Lcom/snapchat/android/model/Mediabryo;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView$3$1;->a:Lcom/snapchat/android/ui/SnapEditorView$3;

    iget v2, v2, Lcom/snapchat/android/ui/SnapEditorView$3;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Lcom/snapchat/android/model/Mediabryo;I)V

    .line 514
    return-void
.end method
