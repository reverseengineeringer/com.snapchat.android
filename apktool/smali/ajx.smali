.class public final Lajx;
.super Lcom/snapchat/android/model/StoryGroup;
.source "SourceFile"


# static fields
.field public static final MY_STORY_ID:Ljava/lang/String; = "my_story_ads79sdf"

.field private static sInstance:Lajx;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryGroup;-><init>()V

    .line 17
    const-string v0, "my_story_ads79sdf"

    iput-object v0, p0, Lajx;->mStoryId:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajx;->mDisplayName:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lajx;->mStorySnapLogbooks:Ljava/util/List;

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lajx;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lajx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lajx;->sInstance:Lajx;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    sput-object v0, Lajx;->sInstance:Lajx;

    .line 26
    :cond_0
    sget-object v0, Lajx;->sInstance:Lajx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lajx;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lajx;->sInstance:Lajx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lajx;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 36
    const-string v2, "my_story_ads79sdf"

    iput-object v2, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 37
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    const-string v2, "my_story_ads79sdf"

    iput-object v2, v0, Lakl;->mStoryId:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lajx;->mStorySnapLogbooks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    return-void
.end method
