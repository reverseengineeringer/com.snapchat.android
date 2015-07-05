.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbur;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 646
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-static {v0}, Lbfd;->a(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method
