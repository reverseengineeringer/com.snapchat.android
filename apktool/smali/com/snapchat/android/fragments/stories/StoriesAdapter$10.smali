.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;
.super Lafh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3}, Lafh;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 10

    .prologue
    .line 758
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    iget-object v5, v5, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->f()V

    .line 761
    return-void
.end method
