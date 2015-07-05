.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StorySnapLogbook;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;->a:Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$12$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$12;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    return-void
.end method
