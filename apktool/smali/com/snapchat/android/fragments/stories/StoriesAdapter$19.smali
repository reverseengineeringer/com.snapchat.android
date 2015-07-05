.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahd;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lahd;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;->a:Lahd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->e(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbem;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$19;->a:Lahd;

    invoke-virtual {v2}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v2

    invoke-direct {v1, v2}, Lbem;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 545
    return-void
.end method
