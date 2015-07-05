.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lauz;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Lauz;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->b:Lauz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Lauy;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->b:Lauz;

    invoke-virtual {v0, v1, v2}, Lauy;->a(Landroid/content/Context;Lauz;)V

    .line 676
    return-void
.end method
