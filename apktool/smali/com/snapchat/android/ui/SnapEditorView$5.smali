.class final Lcom/snapchat/android/ui/SnapEditorView$5;
.super Lcom/snapchat/android/util/PhotoEffectTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$5;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/PhotoEffectTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 726
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$5;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
