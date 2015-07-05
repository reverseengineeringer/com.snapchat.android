.class public final Laon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lzd;

.field private final b:Lng;

.field private final c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

.field private final d:Laup;

.field private final e:Lcom/snapchat/android/model/StoryCollection;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laon;-><init>(Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V
    .locals 7
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
    .line 44
    invoke-static {}, Lzd;->a()Lzd;

    move-result-object v1

    invoke-static {}, Lng;->a()Lng;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a()Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v3

    invoke-static {}, Laup;->d()Laup;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Laon;-><init>(Lzd;Lng;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Laup;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lzd;Lng;Lcom/snapchat/android/analytics/SnapViewEventAnalytics;Laup;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;)V
    .locals 0
    .param p6    # Ljava/util/List;
        .annotation build Lr;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzd;",
            "Lng;",
            "Lcom/snapchat/android/analytics/SnapViewEventAnalytics;",
            "Laup;",
            "Lcom/snapchat/android/model/StoryCollection;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Laon;->a:Lzd;

    .line 54
    iput-object p2, p0, Laon;->b:Lng;

    .line 55
    iput-object p3, p0, Laon;->c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    .line 56
    iput-object p4, p0, Laon;->d:Laup;

    .line 57
    iput-object p5, p0, Laon;->e:Lcom/snapchat/android/model/StoryCollection;

    .line 58
    iput-object p6, p0, Laon;->f:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 66
    iget-object v0, p0, Laon;->a:Lzd;

    iget-object v1, p0, Laon;->e:Lcom/snapchat/android/model/StoryCollection;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/snapchat/android/controller/stories/StoryLoadingContext;->TAP_TO_LOAD:Lcom/snapchat/android/controller/stories/StoryLoadingContext;

    invoke-virtual/range {v0 .. v5}, Lzd;->a(Lcom/snapchat/android/model/StoryCollection;ILaje;ZLcom/snapchat/android/controller/stories/StoryLoadingContext;)I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Laon;->c:Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;->STORY:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->a(Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSourceType;)V

    .line 69
    iget-object v0, p0, Laon;->d:Laup;

    iget-object v1, p0, Laon;->e:Lcom/snapchat/android/model/StoryCollection;

    iget-object v2, p0, Laon;->f:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Laup;->mSnapView:Lcom/snapchat/android/ui/SnapView;

    if-eqz v4, :cond_0

    new-instance v4, Laup$c;

    invoke-direct {v4, v0, v1, v2, v3}, Laup$c;-><init>(Laup;Lcom/snapchat/android/model/StoryCollection;Ljava/util/List;Landroid/content/Context;)V

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Laon;->b:Lng;

    const-string v1, "story"

    const-string v2, "tap_to_load"

    invoke-virtual {v0, v1, v2}, Lng;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
