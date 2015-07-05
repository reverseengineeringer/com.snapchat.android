.class final Lcom/snapchat/android/preview/SnapPreviewFragment$1;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$1;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0, p2, p3}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$1;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z

    .line 616
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$1;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 618
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method
