.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;
.super Laqb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    invoke-direct {p0, p2, p3, p4, p5}, Laqb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Lpu;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lafl;

    invoke-virtual {v1}, Lafl;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpu;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lpu;->f()V

    .line 583
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lafl;

    invoke-virtual {v0}, Lafl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Llp;

    invoke-direct {v1}, Llp;-><init>()V

    sget-object v2, Llr;->OUR:Llr;

    iput-object v2, v1, Llp;->storyType:Llr;

    iput-object v0, v1, Llp;->posterId:Ljava/lang/String;

    invoke-static {v0}, Laop;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOCAL"

    iput-object v0, v1, Llp;->geoFence:Ljava/lang/String;

    :cond_0
    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 584
    :cond_1
    return-void
.end method
