.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhr$a;


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
    .line 492
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lbhr;

    move-result-object v0

    invoke-virtual {v0}, Lbhr;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$12$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$12$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$12;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    return-void
.end method
