.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Ljava/util/List;

    iput p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lady;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Ljava/util/List;

    iget v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->b:I

    iget-object v3, v0, Lady;->a:Laea;

    invoke-virtual {v3, v1, v2}, Laea;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lady;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lady;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lady;->c:Ladz;

    invoke-virtual {v0}, Ladz;->notifyDataSetChanged()V

    .line 1989
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    .line 1990
    return-void
.end method
