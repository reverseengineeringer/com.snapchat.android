.class final Lcom/snapchat/android/preview/SnapPreviewFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr$a;


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
    .line 825
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$15;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$15;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->e(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$15$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$15$1;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment$15;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$15;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->g(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/preview/SnapPreviewFragment$15$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/preview/SnapPreviewFragment$15$2;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment$15;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    return-void
.end method
