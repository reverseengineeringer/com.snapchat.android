.class final Lcom/snapchat/android/fragments/stories/StoriesFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/Friend;)V
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
    .line 731
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/model/Friend;

    .line 735
    return-void
.end method
