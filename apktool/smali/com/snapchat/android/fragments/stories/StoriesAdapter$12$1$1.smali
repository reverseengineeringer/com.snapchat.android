.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lapi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 441
    const v0, 0x7f0c01cd

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;

    iget-object v1, v1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->d(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 442
    return-void
.end method
