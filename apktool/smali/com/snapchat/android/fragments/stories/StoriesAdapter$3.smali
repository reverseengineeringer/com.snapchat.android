.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;
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
.field final synthetic a:Lagl;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lagl;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lagl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lagl;

    iget-object v3, v0, Lagl;->d:Ljava/lang/String;

    .line 571
    if-nez v3, :cond_0

    .line 572
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->a:Lagl;

    invoke-virtual {v1}, Lagl;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0c001e

    invoke-static {v6, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 575
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;

    move-result-object v2

    new-array v1, v5, [Ljava/lang/Object;

    const v4, 0x7f0c0195

    invoke-static {v6, v4, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v5, [Ljava/lang/Object;

    const v5, 0x7f0c02c7

    invoke-static {v6, v5, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$3;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$3$1;->show()V

    .line 586
    return-void
.end method
