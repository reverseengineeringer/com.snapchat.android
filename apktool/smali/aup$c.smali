.class public final Laup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final mActivityContext:Landroid/content/Context;

.field private final mClickedAndLoadedStorySnap:Lajr;

.field private mLogbooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapProvider:Laio;

.field private mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

.field final synthetic this$0:Laup;


# direct methods
.method public constructor <init>(Laup;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 476
    iput-object p1, p0, Laup$c;->this$0:Laup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p4, p0, Laup$c;->mActivityContext:Landroid/content/Context;

    .line 478
    iput-object p2, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    .line 479
    iput-object p3, p0, Laup$c;->mLogbooks:Ljava/util/List;

    .line 481
    instance-of v0, p2, Lajg;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->A()Lajr;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    .line 482
    iget-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    if-eqz v0, :cond_2

    .line 483
    iget-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v1, p0, Laup$c;->mLogbooks:Ljava/util/List;

    invoke-static {v0, p2, v1}, Lza;->a(Lajr;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)Laio;

    move-result-object v0

    iput-object v0, p0, Laup$c;->mSnapProvider:Laio;

    .line 488
    :goto_1
    return-void

    .line 481
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->y()Lajr;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 486
    :cond_2
    iput-object v1, p0, Laup$c;->mSnapProvider:Laio;

    goto :goto_1
.end method

.method public constructor <init>(Laup;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 490
    iput-object p1, p0, Laup$c;->this$0:Laup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p3, p0, Laup$c;->mActivityContext:Landroid/content/Context;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Laup$c;->mLogbooks:Ljava/util/List;

    .line 494
    iget-object v0, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v0}, Lajr;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    :goto_0
    iput-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    .line 496
    iget-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v2, p0, Laup$c;->mLogbooks:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lza;->a(Lajr;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)Laio;

    move-result-object v0

    iput-object v0, p0, Laup$c;->mSnapProvider:Laio;

    .line 498
    return-void

    :cond_0
    move-object v0, v1

    .line 494
    goto :goto_0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 520
    iget-object v3, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v0, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    if-eqz v0, :cond_0

    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v0

    iget-object v1, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    const/4 v2, 0x7

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 521
    :cond_0
    iget-object v0, p0, Laup$c;->this$0:Laup;

    iget-object v0, v0, Laup;->mStoryLoadAnalyticsReporter:Lze;

    iget-object v1, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v2, v2, Lajr;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v3, "STORY_STORY_VIEW_LOAD_TYPE"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "view_location"

    invoke-static {v1}, Lze;->a(Lcom/snapchat/android/model/StoryCollection;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "source"

    invoke-virtual {v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "reachability"

    iget-object v0, v0, Lze;->a:Lale;

    invoke-virtual {v0}, Lale;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 523
    iget-object v1, p0, Laup$c;->this$0:Laup;

    iget-object v2, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v3, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    iget-object v5, p0, Laup$c;->mSnapProvider:Laio;

    iget-object v0, p0, Laup$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lajg;

    iget-object v6, p0, Laup$c;->mLogbooks:Ljava/util/List;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lajr;ZLajv;)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v7, Lbdt;

    invoke-direct {v7, v4}, Lbdt;-><init>(Z)V

    invoke-virtual {v0, v7}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v7, v1, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v7, v2, v5, v0}, Lcom/snapchat/android/ui/SnapView;->a(Laje;Laio;Z)V

    if-nez v3, :cond_1

    if-nez v6, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v4, v1, Laup;->mSecondTapForFailedStory:Z

    iget-object v1, v1, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 525
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 523
    goto :goto_0

    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    goto :goto_1
.end method

.method static synthetic a(Laup$c;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Laup$c;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 502
    iget-object v0, p0, Laup$c;->this$0:Laup;

    iget-object v0, v0, Laup;->mMediaViewAnalytics:Lng;

    const-string v1, "story"

    const-string v2, "view_media"

    invoke-virtual {v0, v2, v1}, Lng;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laup$c;->mSnapProvider:Laio;

    if-nez v0, :cond_1

    .line 504
    :cond_0
    const-string v0, "SnapListItemHandler"

    const-string v1, "Story snap or provider are null, not starting story!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mUsername:Ljava/lang/String;

    .line 510
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->b(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 512
    iget-boolean v2, v1, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Laup$c;->this$0:Laup;

    iget-object v2, v2, Laup;->mOurCampusStoryDialogLog:Lzq;

    invoke-virtual {v2, v0}, Lzq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    iget-object v2, p0, Laup$c;->mClickedAndLoadedStorySnap:Lajr;

    iget-object v0, v1, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    const v3, 0x7f0c019a

    invoke-static {v5, v3, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, v1, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    if-nez v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    const v3, 0x7f0c0199

    invoke-static {v5, v3, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v3, Laup$c$1;

    iget-object v4, p0, Laup$c;->mActivityContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Laup$c$1;-><init>(Laup$c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Laup$c;->this$0:Laup;

    iget-object v0, v0, Laup;->mOurCampusStoryDialogLog:Lzq;

    iget-object v1, v2, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_4
    invoke-direct {p0}, Laup$c;->a()V

    goto :goto_0
.end method
