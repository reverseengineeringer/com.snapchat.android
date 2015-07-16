.class final Lcom/snapchat/android/fragments/sendto/SendToFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/sendto/SendToFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/sendto/SendToFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lof;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lof;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lof;->b()V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    .line 246
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    sget-object v2, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BACKGROUND_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    invoke-static {v1, v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 250
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lakp;

    move-result-object v1

    invoke-virtual {v1}, Lakp;->e()V

    .line 253
    :cond_2
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 254
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->a(Ljava/util/LinkedHashSet;)V

    .line 256
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v2

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v5, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v2, v5, :cond_9

    .line 257
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 259
    invoke-static {}, Lakr;->Q()V

    .line 260
    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->g()Lbdz;

    move-result-object v2

    if-eqz v2, :cond_7

    move v2, v3

    .line 261
    :goto_1
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v6

    iget-object v5, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v3

    :goto_2
    const-string v7, "SEND_TO_SCREEN"

    invoke-static {v6, v2, v5, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Laji;ZZLjava/lang/String;)V

    .line 264
    :cond_3
    check-cast v1, Lakg;

    .line 265
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lakg;->mPostToStories:Ljava/util/ArrayList;

    .line 271
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v1

    iget-object v5, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-lez v1, :cond_a

    move v1, v3

    :goto_4
    iget-object v6, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v6}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    :goto_5
    if-eqz v1, :cond_5

    const-string v1, "SNAP_SENT_DELAY"

    const-string v6, "send_to_screen"

    invoke-virtual {v2, v1, v5, v6}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_6

    const-string v1, "STORY_POST_DELAY"

    const-string v3, "send_to_screen"

    invoke-virtual {v2, v1, v5, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_6
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbeo;

    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lbeo;-><init>(Laji;Z)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 274
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbbu;

    invoke-direct {v2}, Lbbu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbbs;

    invoke-direct {v2, v4, v4}, Lbbs;-><init>(ZZ)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 277
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbbt;

    invoke-direct {v2, v4}, Lbbt;-><init>(B)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lbbq;

    sget-object v3, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v2, v3}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 260
    goto/16 :goto_1

    :cond_8
    move v5, v4

    .line 261
    goto/16 :goto_2

    .line 266
    :cond_9
    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    if-ne v1, v2, :cond_4

    .line 267
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 268
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;->a:Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-static {}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m()Laji;

    move-result-object v1

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v1, Laeb;

    invoke-static {v2, v1}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/fragments/sendto/SendToFragment;Laeb;)V

    goto/16 :goto_3

    :cond_a
    move v1, v4

    .line 271
    goto/16 :goto_4

    :cond_b
    move v3, v4

    goto/16 :goto_5
.end method
