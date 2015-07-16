.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvs;


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
    .line 634
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 644
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    move-result-object v0

    invoke-static {v0}, Lbgd;->a(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method
