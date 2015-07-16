.class final Lcom/snapchat/android/preview/SnapPreviewFragment$3;
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
    .line 904
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$3;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$3;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->q(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$3;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->r(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lof;

    move-result-object v0

    const-string v1, "PREPARE_SNAP"

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    iput-object v1, v0, Lof;->mPrepareSnapMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 913
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$3;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->s(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$3;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->t(Lcom/snapchat/android/preview/SnapPreviewFragment;)Z

    .line 916
    return-void
.end method
