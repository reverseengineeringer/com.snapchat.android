.class final Lcom/snapchat/android/ui/SnapEditorView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->h()V
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
    .line 960
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$6;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$6;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$6;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapEditorView;->g(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView$6;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v2}, Lcom/snapchat/android/ui/SnapEditorView;->h(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Lcom/snapchat/android/model/Mediabryo;Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;)V

    .line 964
    return-void
.end method
