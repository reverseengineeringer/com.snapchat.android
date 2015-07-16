.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lavx;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Lavx;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->b:Lavx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->c:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Lavw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->b:Lavx;

    invoke-virtual {v0, v1, v2}, Lavw;->a(Landroid/content/Context;Lavx;)V

    .line 674
    return-void
.end method
