.class public final Lavn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final mActivityContext:Landroid/content/Context;

.field private final mClickedAndLoadedStorySnap:Lakl;

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

.field private final mSnapProvider:Lajk;

.field private mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

.field final synthetic this$0:Lavn;


# direct methods
.method public constructor <init>(Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;Landroid/content/Context;)V
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

    .line 494
    iput-object p1, p0, Lavn$c;->this$0:Lavn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p4, p0, Lavn$c;->mActivityContext:Landroid/content/Context;

    .line 496
    iput-object p2, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    .line 497
    iput-object p3, p0, Lavn$c;->mLogbooks:Ljava/util/List;

    .line 499
    instance-of v0, p2, Lakc;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->x()Lakl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    .line 500
    iget-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v1, p0, Lavn$c;->mLogbooks:Ljava/util/List;

    invoke-static {v0, p2, v1}, Lzw;->a(Lakl;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)Lajk;

    move-result-object v0

    iput-object v0, p0, Lavn$c;->mSnapProvider:Lajk;

    .line 506
    :goto_1
    return-void

    .line 499
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryCollection;->v()Lakl;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 504
    :cond_2
    iput-object v1, p0, Lavn$c;->mSnapProvider:Lajk;

    goto :goto_1
.end method

.method public constructor <init>(Lavn;Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 508
    iput-object p1, p0, Lavn$c;->this$0:Lavn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p3, p0, Lavn$c;->mActivityContext:Landroid/content/Context;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lavn$c;->mLogbooks:Ljava/util/List;

    .line 512
    iget-object v0, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-virtual {v0}, Lakl;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    :goto_0
    iput-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    .line 514
    iget-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v2, p0, Lavn$c;->mLogbooks:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lzw;->a(Lakl;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)Lajk;

    move-result-object v0

    iput-object v0, p0, Lavn$c;->mSnapProvider:Lajk;

    .line 516
    return-void

    :cond_0
    move-object v0, v1

    .line 512
    goto :goto_0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 538
    iget-object v3, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v0, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    if-eqz v0, :cond_0

    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v0

    iget-object v1, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lzz;->c()I

    move-result v2

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->LOAD_FROM_VIEWING:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzz;->a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    .line 539
    :cond_0
    iget-object v0, p0, Lavn$c;->this$0:Lavn;

    iget-object v0, v0, Lavn;->mStoryLoadAnalyticsReporter:Laab;

    iget-object v1, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v2, v2, Lakl;->mLoadingContext:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    const-string v3, "STORY_STORY_VIEW_LOAD_TYPE"

    invoke-static {v3}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v3

    const-string v5, "view_location"

    invoke-static {v1}, Laab;->a(Lcom/snapchat/android/model/StoryCollection;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "source"

    invoke-virtual {v2}, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "reachability"

    iget-object v0, v0, Laab;->a:Lama;

    invoke-virtual {v0}, Lama;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 541
    iget-object v1, p0, Lavn$c;->this$0:Lavn;

    iget-object v2, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v3, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    iget-object v5, p0, Lavn$c;->mSnapProvider:Lajk;

    iget-object v0, p0, Lavn$c;->mStoryCollection:Lcom/snapchat/android/model/StoryCollection;

    instance-of v0, v0, Lakc;

    iget-object v7, p0, Lavn$c;->mLogbooks:Ljava/util/List;

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v8

    invoke-static {v2, v0, v8}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lakl;ZLakp;)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v8, Lbet;

    invoke-direct {v8, v4}, Lbet;-><init>(Z)V

    invoke-virtual {v0, v8}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    move v0, v6

    :goto_0
    iget-object v8, v1, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v8, v2, v5, v0}, Lcom/snapchat/android/ui/SnapView;->a(Laka;Lajk;Z)V

    if-nez v3, :cond_1

    if-nez v7, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v4, v1, Lavn;->mSecondTapForFailedStory:Z

    iget-object v1, v1, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    invoke-virtual {v1, v0, v6}, Lcom/snapchat/android/ui/SnapView;->a(Lcom/snapchat/android/model/StorySnapLogbook;Z)V

    .line 543
    :cond_1
    return-void

    :cond_2
    move v0, v4

    .line 541
    goto :goto_0

    :cond_3
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    goto :goto_1
.end method

.method static synthetic a(Lavn$c;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lavn$c;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 520
    iget-object v0, p0, Lavn$c;->this$0:Lavn;

    iget-object v0, v0, Lavn;->mMediaViewAnalytics:Lnx;

    const-string v1, "story"

    const-string v2, "view_media"

    invoke-virtual {v0, v2, v1}, Lnx;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavn$c;->mSnapProvider:Lajk;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v0, v0, Lakl;->mUsername:Ljava/lang/String;

    .line 528
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 530
    iget-boolean v2, v1, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lavn$c;->this$0:Lavn;

    iget-object v2, v2, Lavn;->mOurCampusStoryDialogLog:Laaq;

    invoke-virtual {v2, v0}, Laaq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    iget-object v2, p0, Lavn$c;->mClickedAndLoadedStorySnap:Lakl;

    iget-object v0, v1, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/Object;

    const v3, 0x7f0c019a

    invoke-static {v5, v3, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, v1, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    if-nez v1, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    const v3, 0x7f0c0199

    invoke-static {v5, v3, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-instance v3, Lavn$c$1;

    iget-object v4, p0, Lavn$c;->mActivityContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1}, Lavn$c$1;-><init>(Lavn$c;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lavn$c;->this$0:Lavn;

    iget-object v0, v0, Lavn;->mOurCampusStoryDialogLog:Laaq;

    iget-object v1, v2, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laaq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_4
    invoke-direct {p0}, Lavn$c;->a()V

    goto :goto_0
.end method
