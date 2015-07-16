.class final Lcom/snapchat/android/preview/SnapPreviewFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$8;->b:Lcom/snapchat/android/preview/SnapPreviewFragment;

    iput-object p2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$8;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1108
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$8;->a:Landroid/view/View;

    const v2, 0x7f0a02ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1110
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lakr;->h(Z)V

    .line 1111
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {v0}, Lakk;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$8;->b:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->o(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 1116
    :goto_1
    return-void

    .line 1110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$8;->b:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->p(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    goto :goto_1
.end method
