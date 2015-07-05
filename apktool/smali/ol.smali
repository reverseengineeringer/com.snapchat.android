.class public Lol;
.super Lot;
.source "SourceFile"


# static fields
.field private static final STORY_ID_PARAM:Ljava/lang/String; = "story_id"

.field private static final TAG:Ljava/lang/String; = "DeleteStorySnapTask"

.field private static final TASK_NAME:Ljava/lang/String; = "DeleteStorySnapTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRequestSuccessful:Z

.field private final mStoryLibrary:Lajq;

.field private mStorySnap:Lajr;

.field private mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

.field private final mStoryUsageAnalytics:Laop;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-static {}, Laop;->a()Laop;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lol;-><init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lajq;Laop;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/StorySnapLogbook;Landroid/content/Context;Lajq;Laop;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lot;-><init>()V

    .line 45
    iput-object p1, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 46
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iput-object v0, p0, Lol;->mStorySnap:Lajr;

    .line 47
    iput-object p2, p0, Lol;->mContext:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lol;->mStoryLibrary:Lajq;

    .line 49
    iput-object p4, p0, Lol;->mStoryUsageAnalytics:Laop;

    .line 50
    return-void
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Laku;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 73
    invoke-virtual {p0}, Lol;->a()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lol;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    invoke-static {v0, v1, v9}, Lpc;->a(Ljava/lang/String;Landroid/os/Bundle;Lpc$a;)Landroid/os/Bundle;

    move-result-object v0

    .line 76
    const-string v1, "resultData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lol;->mResultJson:Ljava/lang/String;

    .line 77
    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lol;->mStatusCode:I

    .line 79
    const-string v1, "result json = %s and result = %s"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lol;->mResultJson:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    const-string v2, "DeleteStorySnapTask"

    const-string v3, "%s: %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "DeleteStorySnapTask"

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lol;->mStatusCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 88
    iput-boolean v6, p0, Lol;->mRequestSuccessful:Z

    .line 91
    :cond_1
    return-object v9
.end method

.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    const-string v1, "my_story_ads79sdf"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "/shared/delete_story"

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/bq/delete_story"

    goto :goto_0
.end method

.method public a(Laku;)V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lol;->mRequestSuccessful:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, p1}, Lol;->b(Laku;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lol;->mStatusCode:I

    invoke-virtual {p0, v0, v1}, Lol;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 112
    const v0, 0x7f0c0273

    iget-object v1, p0, Lol;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 113
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v1, "username"

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "story_id"

    iget-object v2, p0, Lol;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v1, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    const-string v2, "my_story_ads79sdf"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "group_id"

    iget-object v2, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v2, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-object v0
.end method

.method public b(Laku;)V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    new-instance v1, Llj;

    invoke-direct {v1}, Llj;-><init>()V

    invoke-static {v0}, Laop;->c(Lajr;)Llr;

    move-result-object v2

    iput-object v2, v1, Llj;->storyType:Llr;

    iget-object v2, v0, Lajr;->mUsername:Ljava/lang/String;

    iput-object v2, v1, Llj;->posterId:Ljava/lang/String;

    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llj;->storySnapId:Ljava/lang/String;

    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lajr;->ax()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llj;->sponsor:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Laop;->a(Lajr;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LOCAL"

    iput-object v2, v1, Llj;->geoFence:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Llj;->storySnapId:Ljava/lang/String;

    invoke-virtual {v0}, Lajr;->F()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v1, Llj;->snapTime:Ljava/lang/Double;

    invoke-static {v1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    .line 107
    iget-object v1, p0, Lol;->mStoryLibrary:Lajq;

    iget-object v2, p0, Lol;->mStorySnapLogbook:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v3, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    iget-object v0, v1, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, v1, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    instance-of v4, v0, Lajb;

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->k()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v1, v2}, Lajq;->b(Lcom/snapchat/android/model/StorySnapLogbook;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v0, v0, Lajr;->mClientId:Ljava/lang/String;

    iget-object v2, v2, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-virtual {v2}, Lajr;->d()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lawq;->MY_SNAP_IMAGE_CACHE:Lawp;

    invoke-virtual {v3, v0}, Lawp;->c(Ljava/lang/String;)V

    sget-object v3, Lawq;->MY_SNAP_VIDEO_CACHE:Lawp;

    invoke-virtual {v3, v0}, Lawp;->c(Ljava/lang/String;)V

    sget-object v3, Lawq;->MY_STORY_SNAP_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v3, v0}, Lawp;->c(Ljava/lang/String;)V

    invoke-static {v2}, Lajq;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lajq;->j()V

    .line 108
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "DeleteStorySnapTask"

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lol;->a([Ljava/lang/String;)Laku;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Lol;->a(Laku;)V

    return-void
.end method
