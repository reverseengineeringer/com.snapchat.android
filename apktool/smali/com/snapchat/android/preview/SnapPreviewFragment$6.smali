.class final Lcom/snapchat/android/preview/SnapPreviewFragment$6;
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
    .line 994
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 997
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->n()Z

    move-result v0

    .line 998
    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->v(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    const-string v3, "SNAP_SENT_DELAY"

    const-string v4, "preview_screen"

    invoke-virtual {v0, v3, v2, v4}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 1004
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    iget-object v3, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-virtual {v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/preview/SnapPreviewFragment;->a(Lcom/snapchat/android/preview/SnapPreviewFragment;Lakp;)Lakp;

    .line 1006
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/preview/SnapPreviewFragment;->w(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lakp;

    move-result-object v2

    invoke-virtual {v2}, Lakp;->e()V

    .line 1009
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v3, :cond_2

    .line 1010
    check-cast v0, Lakg;

    .line 1011
    iget-object v2, v0, Lakg;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1012
    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v2

    invoke-virtual {v0}, Lakg;->d()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "SEND_TO_SCREEN"

    invoke-static {v2, v1, v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laji;ZZLjava/lang/String;)V

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1021
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcb;

    invoke-direct {v1}, Lbcb;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1022
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->x(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lben;

    iget-object v2, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/preview/SnapPreviewFragment;->i(Lcom/snapchat/android/preview/SnapPreviewFragment;)Laji;

    move-result-object v2

    invoke-direct {v1, v2}, Lben;-><init>(Laji;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1024
    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$6;->a:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->y(Lcom/snapchat/android/preview/SnapPreviewFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1012
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
