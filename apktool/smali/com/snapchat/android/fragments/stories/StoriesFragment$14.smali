.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr$a;


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
    .line 498
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 501
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a03d3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Landroid/widget/TextView;

    .line 502
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0112

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/util/emoji/Emoji;->GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v5}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    return-void
.end method
