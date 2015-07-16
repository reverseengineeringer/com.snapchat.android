.class final Lcom/snapchat/android/preview/SnapPreviewFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 918
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$4;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$4;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->c(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setAudible(Z)V

    .line 922
    return-void

    .line 921
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
