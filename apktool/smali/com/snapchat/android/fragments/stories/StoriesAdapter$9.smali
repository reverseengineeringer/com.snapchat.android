.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;
.super Latg;
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

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Landroid/content/Context;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p2, p3}, Latg;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 738
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9$1;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    iget-object v5, v1, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v6, p1

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$9;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$9$1;->f()V

    .line 747
    return-void
.end method
