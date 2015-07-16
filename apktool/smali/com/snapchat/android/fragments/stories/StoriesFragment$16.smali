.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lacz$a;


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
    .line 512
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$16$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$16;Z)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method
