.class final Lcom/snapchat/android/preview/SnapPreviewFragment$5;
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
    .line 935
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$5;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$5;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->u(Lcom/snapchat/android/preview/SnapPreviewFragment;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$5;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->s(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 943
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$5;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->p(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    goto :goto_0
.end method
