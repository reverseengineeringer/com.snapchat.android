.class final Loo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Loo;

.field final synthetic val$response:Loo$a;

.field final synthetic val$result:Luc;

.field final synthetic val$user:Lajv;


# direct methods
.method constructor <init>(Loo;Loo$a;Luc;Lajv;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Loo$1;->this$0:Loo;

    iput-object p2, p0, Loo$1;->val$response:Loo$a;

    iput-object p3, p0, Loo$1;->val$result:Luc;

    iput-object p4, p0, Loo$1;->val$user:Lajv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 74
    iget-object v2, p0, Loo$1;->this$0:Loo;

    iget-object v3, p0, Loo$1;->val$response:Loo$a;

    iget-object v4, p0, Loo$1;->val$user:Lajv;

    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    iget-object v6, v0, Lajc;->mStoryId:Ljava/lang/String;

    iget-object v7, v2, Loo;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v3, Loo$a;->mLocalPostTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v3, Loo$a;->mLocalViewTitle:Ljava/lang/String;

    iput-object v1, v0, Lajc;->mCustomTitle:Ljava/lang/String;

    :cond_1
    iget-object v1, v3, Loo$a;->mLocalPostBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v3, Loo$a;->mLocalPostBody:Ljava/lang/String;

    iput-object v1, v0, Lajc;->mCustomDescription:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    iget-object v1, v2, Loo;->mSharedStoryId:Ljava/lang/String;

    iget-object v0, v0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    if-eqz v0, :cond_3

    iget-object v1, v3, Loo$a;->mOurSharedStory:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v3, Loo$a;->mOurSharedStory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v2, Loo;->mSharedStoryId:Ljava/lang/String;

    invoke-static {v0, v4}, Latm;->c(Ljava/lang/String;Lajv;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v3, Loo$a;->mFriend:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v3, Loo$a;->mFriend:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v1, v3, Loo$a;->mLocalViewTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v3, Loo$a;->mLocalViewTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mCustomTitle:Ljava/lang/String;

    .line 75
    :cond_5
    return-void

    .line 74
    :cond_6
    iget-object v1, v3, Loo$a;->mLocalViewBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v3, Loo$a;->mLocalViewBody:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mCustomDescription:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method
