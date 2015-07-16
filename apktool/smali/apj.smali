.class public final Lapj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lzz;

.field private final b:Lnx;

.field private final c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final d:Lapl;

.field private final e:Lavn;

.field private final f:Lcom/snapchat/android/model/StoryCollection;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field private final h:J


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 10
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v1

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v4

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lapj;-><init>(Lzz;Lnx;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lapl;Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;J)V
    .locals 10
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v1

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v4

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p1

    move-wide v8, p2

    invoke-direct/range {v0 .. v9}, Lapj;-><init>(Lzz;Lnx;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lapl;Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;J)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V
    .locals 10
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lr;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v1

    invoke-static {}, Lnx;->a()Lnx;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Lapl;->a()Lapl;

    move-result-object v4

    invoke-static {}, Lavn;->d()Lavn;

    move-result-object v5

    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lapj;-><init>(Lzz;Lnx;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lapl;Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;J)V

    .line 61
    return-void
.end method

.method private constructor <init>(Lzz;Lnx;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Lapl;Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;J)V
    .locals 0
    .param p7    # Ljava/util/List;
        .annotation build Lr;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzz;",
            "Lnx;",
            "Lcom/snapchat/android/analytics/SnapViewEventAnalytics;",
            "Lapl;",
            "Lavn;",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lapj;->a:Lzz;

    .line 70
    iput-object p2, p0, Lapj;->b:Lnx;

    .line 71
    iput-object p3, p0, Lapj;->c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 72
    iput-object p4, p0, Lapj;->d:Lapl;

    .line 73
    iput-object p5, p0, Lapj;->e:Lavn;

    .line 74
    iput-object p6, p0, Lapj;->f:Lcom/snapchat/android/model/StoryCollection;

    .line 75
    iput-object p7, p0, Lapj;->g:Ljava/util/List;

    .line 76
    iput-wide p8, p0, Lapj;->h:J

    .line 77
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 84
    iget-object v0, p0, Lapj;->a:Lzz;

    iget-object v1, p0, Lapj;->f:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Lapj;->a:Lzz;

    iget-object v2, v2, Lzz;->a:Laaa;

    iget-object v2, v2, Laaa;->a:Lakn;

    const-string v3, "STORY_LOADER_ANDROID"

    const-string v4, "NUM_TO_LOAD_ON_TAP"

    const/4 v5, 0x5

    invoke-virtual {v2, v3, v4, v5}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzz;->a(Lcom/snapchat/android/model/StoryCollection;ILaka;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lapj;->c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 87
    iget-object v0, p0, Lapj;->d:Lapl;

    iget-wide v2, p0, Lapj;->h:J

    invoke-virtual {v0, v2, v3}, Lapl;->a(J)V

    .line 88
    iget-object v0, p0, Lapj;->e:Lavn;

    iget-object v1, p0, Lapj;->f:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Lapj;->g:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lavn;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v4, :cond_0

    new-instance v4, Lavn$c;

    invoke-direct {v4, v0, v1, v2, v3}, Lavn$c;-><init>(Lavn;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lapj;->b:Lnx;

    const-string v1, "story"

    const-string v2, "tap_to_load"

    invoke-virtual {v0, v1, v2}, Lnx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
