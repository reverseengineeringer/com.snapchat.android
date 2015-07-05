.class public final Lajq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lajq;

.field private static final TAG:Ljava/lang/String; = "StoryLibrary"


# instance fields
.field private final mDevUtils:Lazm;

.field private final mFriendStoriesForDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFriendStoryCollections:Ljava/util/Map;
    .annotation runtime Lbwo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation
.end field

.field public final mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation
.end field

.field public final mPostToStories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajc;",
            ">;"
        }
    .end annotation
.end field

.field public final mStories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoryGroupStoryCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPrefs:Lajx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lajq;

    invoke-direct {v0}, Lajq;-><init>()V

    sput-object v0, Lajq;->INSTANCE:Lajq;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v0

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lajq;-><init>(Lajx;Lcom/squareup/otto/Bus;Lazm;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Lajx;Lcom/squareup/otto/Bus;Lazm;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajq;->mPostToStories:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lajq;->mStoryGroupStoryCollections:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    .line 82
    new-instance v0, Lbco;

    invoke-direct {v0}, Lbco;-><init>()V

    invoke-virtual {p2, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lajq;->mUserPrefs:Lajx;

    .line 84
    iput-object p3, p0, Lajq;->mDevUtils:Lazm;

    .line 85
    return-void
.end method

.method public static a()Lajq;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lajq;->INSTANCE:Lajq;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4

    .prologue
    .line 674
    iget-object v1, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 675
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 676
    iget-object v3, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Collection;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhv;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    :cond_0
    return-void

    .line 632
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 633
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhv;

    .line 634
    invoke-virtual {v0}, Lbhv;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    invoke-virtual {v0}, Lbhv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhw;

    .line 636
    new-instance v4, Lajr;

    invoke-virtual {v0}, Lbhw;->a()Lbjg;

    move-result-object v0

    invoke-direct {v4, v0}, Lajr;-><init>(Lbjg;)V

    .line 637
    invoke-virtual {v4}, Lajr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 642
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 643
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 644
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 646
    invoke-static {v0}, Lajq;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 654
    sget-object v0, Lawq;->STORY_RECEIVED_VIDEO_CACHE:Lawp;

    invoke-virtual {v0, p0}, Lawp;->c(Ljava/lang/String;)V

    .line 655
    sget-object v0, Lawq;->STORY_RECEIVED_IMAGE_CACHE:Lawp;

    invoke-virtual {v0, p0}, Lawp;->c(Ljava/lang/String;)V

    .line 656
    sget-object v0, Lawq;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Lawp;

    invoke-virtual {v0, p0}, Lawp;->c(Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private q()V
    .locals 5

    .prologue
    .line 663
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 664
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 665
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 666
    iget-object v2, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 667
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 668
    iget-object v3, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 496
    iget-object v0, p0, Lajq;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public final a(Lajr;)V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p1}, Lajr;->aE()V

    .line 213
    new-instance v1, Lcom/snapchat/android/model/StorySnapLogbook;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lbjh;

    invoke-direct {v2}, Lbjh;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lajr;Ljava/util/List;Lbjh;)V

    .line 215
    const-string v0, "my_story_ads79sdf"

    iput-object v0, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    const-string v2, "my_story_ads79sdf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 217
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    .line 218
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 220
    invoke-virtual {p0, v1}, Lajq;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 221
    invoke-virtual {p0}, Lajq;->j()V

    .line 222
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 201
    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    iput-object v1, v0, Lajr;->mStoryId:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 203
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lajc;->mTimestamp:J

    goto :goto_1

    .line 157
    :cond_1
    iget-object v2, p0, Lajq;->mPostToStories:Ljava/util/List;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v0, p0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 159
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 160
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajc;

    .line 163
    iget-object v4, v0, Lajc;->mCustomTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 164
    iget-object v4, v0, Lajc;->mCustomTitle:Ljava/lang/String;

    iput-object v4, v1, Lajc;->mCustomTitle:Ljava/lang/String;

    .line 166
    :cond_3
    iget-object v4, v0, Lajc;->mCustomDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 167
    iget-object v0, v0, Lajc;->mCustomDescription:Ljava/lang/String;

    iput-object v0, v1, Lajc;->mCustomDescription:Ljava/lang/String;

    .line 169
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 173
    :cond_5
    :try_start_1
    iget-object v0, p0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbco;

    invoke-direct {v1}, Lbco;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lavl;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbhv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 582
    :cond_0
    const-string v0, "StoryLibrary"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating friend stories with isDelta = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 589
    if-nez p2, :cond_1

    .line 590
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 591
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lajq;->a(Ljava/util/List;Ljava/util/Collection;)V

    .line 592
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbhv;

    .line 596
    invoke-virtual {v1}, Lbhv;->a()Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v4, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 598
    if-eqz v0, :cond_2

    .line 599
    iget-object v4, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v4

    .line 600
    :try_start_1
    iget-object v5, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-virtual {v0, v1, v5, p2}, Lcom/snapchat/android/model/StoryCollection;->a(Lbhv;Ljava/util/List;Z)V

    .line 601
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 606
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 592
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 601
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 603
    :cond_2
    new-instance v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/StoryCollection;-><init>(Lbhv;)V

    .line 604
    invoke-direct {p0, v0}, Lajq;->a(Lcom/snapchat/android/model/StoryCollection;)V

    goto :goto_2

    .line 609
    :cond_3
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 610
    if-nez p2, :cond_4

    .line 611
    :try_start_4
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 613
    :cond_4
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 614
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 615
    invoke-virtual {p0}, Lajq;->j()V

    .line 616
    invoke-direct {p0}, Lajq;->q()V

    goto/16 :goto_0

    .line 614
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    invoke-virtual {p0}, Lajq;->c()V

    .line 94
    return-void
.end method

.method final b(Ljava/util/List;)V
    .locals 2
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
    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 207
    invoke-virtual {p0, v0}, Lajq;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_0

    .line 209
    :cond_0
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/StorySnapLogbook;)Z
    .locals 6

    .prologue
    .line 272
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    .line 273
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    iget-object v2, v0, Lajr;->mClientId:Ljava/lang/String;

    .line 274
    iget-object v3, p0, Lajq;->mStories:Ljava/util/Map;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 276
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v5}, Lajn;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v5}, Lajn;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :cond_1
    const/4 v0, 0x1

    monitor-exit v3

    .line 284
    :goto_0
    return v0

    .line 283
    :cond_2
    monitor-exit v3

    .line 284
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lajq;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    iget-object v0, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    invoke-static {}, Lajx;->aC()V

    .line 102
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 505
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v1, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 509
    iget-object v0, v0, Lajr;->mUsername:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 226
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 227
    iget-object v1, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    .line 228
    invoke-virtual {v1}, Lajr;->aE()V

    goto :goto_1

    .line 231
    :cond_0
    iget-object v1, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    .line 232
    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v1

    .line 234
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 235
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 239
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    new-instance v1, Loo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Loo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Loo;->f()V

    .line 242
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lajq;->b(Ljava/util/List;)V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 244
    :cond_3
    invoke-virtual {p0}, Lajq;->j()V

    .line 245
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lajq;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajc;

    invoke-virtual {v0}, Lajc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v1, p0, Lajq;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    .line 107
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajq;->mPostToStories:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    const/4 v2, 0x0

    invoke-static {}, Laja;->a()Laja;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    monitor-exit v1

    return-object v0

    .line 110
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 549
    iget-object v0, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 551
    invoke-virtual {v0}, Lajr;->aD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "StoryLibrary"

    const-string v3, "Not loading expired StorySnap from database %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lajr;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :cond_0
    iget-object v1, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    iget-object v3, v0, Lajr;->mUsername:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    .line 557
    if-nez v1, :cond_1

    .line 558
    new-instance v1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v1}, Lcom/snapchat/android/model/StoryCollection;-><init>()V

    .line 559
    iget-object v3, v0, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    iget-object v4, v0, Lajr;->mUsername:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryCollection;->e(Lajr;)V

    goto :goto_0

    .line 565
    :cond_2
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 567
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->v()V

    goto :goto_1

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    invoke-direct {p0}, Lajq;->q()V

    .line 572
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    iget-object v2, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 131
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 134
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->g()Z

    move-result v0

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 137
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v1, :cond_1

    .line 142
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdc;

    invoke-direct {v1}, Lbdc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 146
    :cond_1
    return-void

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v2, p0, Lajq;->mStories:Ljava/util/Map;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 187
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-object v1
.end method

.method public final g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v1, p0, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 195
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajq;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lajq;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 289
    :try_start_0
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 290
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v3, Loo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Loo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Loo;->f()V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v1, p0, Lajq;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 388
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 389
    const-string v2, "my_story_ads79sdf"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()V
    .locals 6

    .prologue
    .line 470
    iget-object v1, p0, Lajq;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lajq;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 472
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    .line 473
    iget-object v4, p0, Lajq;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 480
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 481
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lajr;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 484
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;)V

    .line 485
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->t()V

    .line 486
    iget-object v4, p0, Lajq;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 488
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final k()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()I
    .locals 5

    .prologue
    .line 521
    const/4 v1, 0x0

    .line 522
    iget-object v2, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 523
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 524
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->u()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 527
    goto :goto_0

    .line 528
    :cond_0
    monitor-exit v2

    .line 529
    return v1

    .line 528
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final m()V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 534
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 535
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 536
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->t()V

    goto :goto_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v1, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 543
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lajq;->mFriendStoriesForDatabase:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final o()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 685
    invoke-static {}, Lazm;->d()Z

    move-result v4

    .line 687
    iget-object v5, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v5

    .line 688
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    iget-object v1, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 691
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 695
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Lajo;

    invoke-direct {v1, v0}, Lajo;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, v1

    .line 701
    :goto_1
    invoke-virtual {v0}, Lajg;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 702
    if-nez v4, :cond_0

    .line 703
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 698
    :cond_1
    :try_start_1
    new-instance v1, Lajg;

    invoke-direct {v1, v0}, Lajg;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    move-object v0, v1

    goto :goto_1

    .line 706
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 712
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 714
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 715
    return-object v2
.end method

.method public final p()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 722
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 725
    iget-object v3, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v3

    .line 726
    :try_start_0
    iget-object v0, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 727
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 728
    iget-object v5, p0, Lajq;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 731
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 737
    :cond_1
    :try_start_1
    new-instance v5, Lajg;

    invoke-direct {v5, v0}, Lajg;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 744
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 748
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 750
    return-object v0
.end method
