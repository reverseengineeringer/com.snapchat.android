.class public final Lakk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lakk;

.field private static final TAG:Ljava/lang/String; = "StoryLibrary"


# instance fields
.field private final mDevUtils:Lbal;

.field protected final mFriendStoryCollections:Ljava/util/Map;
    .annotation runtime Lbxp;
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
            "Lajy;",
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

.field private final mUserPrefs:Lakr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lakk;

    invoke-direct {v0}, Lakk;-><init>()V

    sput-object v0, Lakk;->INSTANCE:Lakk;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakk;-><init>(Lakr;Lcom/squareup/otto/Bus;Lbal;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Lakr;Lcom/squareup/otto/Bus;Lbal;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakk;->mPostToStories:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lakk;->mStories:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lakk;->mStoryGroupStoryCollections:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    .line 82
    new-instance v0, Lbdo;

    invoke-direct {v0}, Lbdo;-><init>()V

    invoke-virtual {p2, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lakk;->mUserPrefs:Lakr;

    .line 84
    iput-object p3, p0, Lakk;->mDevUtils:Lbal;

    .line 85
    return-void
.end method

.method public static a()Lakk;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lakk;->INSTANCE:Lakk;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/Collection;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbiv;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/StoryCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    :cond_0
    return-void

    .line 622
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 623
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiv;

    .line 624
    invoke-virtual {v0}, Lbiv;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    invoke-virtual {v0}, Lbiv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .line 626
    new-instance v4, Lakl;

    invoke-virtual {v0}, Lbiw;->a()Lbkh;

    move-result-object v0

    invoke-direct {v4, v0}, Lakl;-><init>(Lbkh;)V

    .line 627
    invoke-virtual {v4}, Lakl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 632
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

    .line 633
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

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

    check-cast v0, Lakl;

    .line 634
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 636
    invoke-static {v0}, Lakk;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 644
    sget-object v0, Laxo;->STORY_RECEIVED_VIDEO_CACHE:Laxn;

    invoke-virtual {v0, p0}, Laxn;->c(Ljava/lang/String;)V

    .line 645
    sget-object v0, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-virtual {v0, p0}, Laxn;->c(Ljava/lang/String;)V

    .line 646
    sget-object v0, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    invoke-virtual {v0, p0}, Laxn;->c(Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method private p()V
    .locals 5

    .prologue
    .line 653
    iget-object v1, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 654
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 655
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 656
    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 657
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 658
    iget-object v3, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 660
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
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 495
    iget-object v0, p0, Lakk;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public final a(Lakl;)V
    .locals 3

    .prologue
    .line 211
    invoke-virtual {p1}, Lakl;->az()V

    .line 212
    new-instance v1, Lcom/snapchat/android/model/StorySnapLogbook;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lbki;

    invoke-direct {v2}, Lbki;-><init>()V

    invoke-direct {v1, p1, v0, v2}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lakl;Ljava/util/List;Lbki;)V

    .line 214
    const-string v0, "my_story_ads79sdf"

    iput-object v0, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

    const-string v2, "my_story_ads79sdf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 216
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    .line 217
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 219
    invoke-virtual {p0, v1}, Lakk;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 220
    invoke-virtual {p0}, Lakk;->j()V

    .line 221
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    .line 200
    iget-object v1, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStoryId:Ljava/lang/String;

    iput-object v1, v0, Lakl;->mStoryId:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lajy;->mTimestamp:J

    goto :goto_1

    .line 156
    :cond_1
    iget-object v2, p0, Lakk;->mPostToStories:Ljava/util/List;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v0, p0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 158
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajy;

    .line 162
    iget-object v4, v0, Lajy;->mCustomTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 163
    iget-object v4, v0, Lajy;->mCustomTitle:Ljava/lang/String;

    iput-object v4, v1, Lajy;->mCustomTitle:Ljava/lang/String;

    .line 165
    :cond_3
    iget-object v4, v0, Lajy;->mCustomDescription:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 166
    iget-object v0, v0, Lajy;->mCustomDescription:Ljava/lang/String;

    iput-object v0, v1, Lajy;->mCustomDescription:Ljava/lang/String;

    .line 168
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_5
    :try_start_1
    iget-object v0, p0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdo;

    invoke-direct {v1}, Lbdo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbiv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 578
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 581
    iget-object v3, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v3

    .line 584
    if-nez p2, :cond_1

    .line 585
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lakk;->a(Ljava/util/List;Ljava/util/Collection;)V

    .line 588
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiv;

    .line 589
    invoke-virtual {v0}, Lbiv;->a()Ljava/lang/String;

    move-result-object v1

    .line 590
    iget-object v5, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    .line 591
    if-eqz v1, :cond_2

    .line 592
    invoke-virtual {v1, v0, p2}, Lcom/snapchat/android/model/StoryCollection;->a(Lbiv;Z)V

    .line 596
    :goto_2
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 594
    :cond_2
    :try_start_1
    new-instance v1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v1, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Lbiv;)V

    goto :goto_2

    .line 599
    :cond_3
    if-nez p2, :cond_4

    .line 600
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 602
    :cond_4
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 603
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    invoke-virtual {p0}, Lakk;->j()V

    .line 606
    invoke-direct {p0}, Lakk;->p()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    invoke-virtual {p0}, Lakk;->c()V

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
    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 206
    invoke-virtual {p0, v0}, Lakk;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public final b(Lcom/snapchat/android/model/StorySnapLogbook;)Z
    .locals 6

    .prologue
    .line 271
    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    .line 272
    iget-object v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    iget-object v2, v0, Lakl;->mClientId:Ljava/lang/String;

    .line 273
    iget-object v3, p0, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

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

    .line 275
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v5}, Laki;->b(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v5}, Laki;->a(Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :cond_1
    const/4 v0, 0x1

    monitor-exit v3

    .line 283
    :goto_0
    return v0

    .line 282
    :cond_2
    monitor-exit v3

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 282
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
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 98
    iget-object v0, p0, Lakk;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    invoke-static {}, Lakr;->aB()V

    .line 101
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 504
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
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
    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 225
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

    .line 226
    iget-object v1, v1, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    .line 227
    invoke-virtual {v1}, Lakl;->az()V

    goto :goto_1

    .line 230
    :cond_0
    iget-object v1, p0, Lakk;->mStories:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryGroup;

    .line 231
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v1

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 234
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 238
    :goto_2
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    new-instance v1, Lpf;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lpf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpf;->execute()V

    .line 241
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakk;->b(Ljava/util/List;)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v1, p0, Lakk;->mStories:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {p0}, Lakk;->j()V

    .line 244
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lajy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lakk;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajy;

    invoke-virtual {v0}, Lajy;->b()Z

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

    .line 105
    iget-object v1, p0, Lakk;->mPostToStories:Ljava/util/List;

    monitor-enter v1

    .line 106
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakk;->mPostToStories:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    const/4 v2, 0x0

    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    monitor-exit v1

    return-object v0

    .line 109
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
            "Lakl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 545
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 546
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 547
    invoke-virtual {v0}, Lakl;->ay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lakl;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 551
    :cond_0
    :try_start_1
    iget-object v1, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    iget-object v4, v0, Lakl;->mUsername:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/StoryCollection;

    .line 552
    if-nez v1, :cond_1

    .line 553
    new-instance v1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v1}, Lcom/snapchat/android/model/StoryCollection;-><init>()V

    .line 554
    iget-object v4, v0, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/lang/String;)V

    .line 555
    iget-object v4, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    iget-object v5, v0, Lakl;->mUsername:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StoryCollection;->e(Lakl;)V

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->r()V

    goto :goto_1

    .line 563
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    invoke-direct {p0}, Lakk;->p()V

    .line 566
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 131
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 133
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->g()Z

    move-result v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 136
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v1, :cond_1

    .line 141
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbec;

    invoke-direct {v1}, Lbec;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 145
    :cond_1
    return-void

    .line 139
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
    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v2, p0, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

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

    .line 186
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 188
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

    .line 189
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
    .line 193
    iget-object v1, p0, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    monitor-enter v1

    .line 194
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakk;->mMyPostedStorySnapLogbooksForDatabase:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 195
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
    .line 287
    iget-object v1, p0, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

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

    .line 289
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    new-instance v3, Lpf;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lpf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lpf;->execute()V

    goto :goto_0

    .line 293
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
    .line 386
    iget-object v1, p0, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 387
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lakk;->mStories:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 388
    const-string v2, "my_story_ads79sdf"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 390
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
    .line 469
    iget-object v1, p0, Lakk;->mStories:Ljava/util/Map;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lakk;->mStories:Ljava/util/Map;

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

    .line 471
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v3

    .line 472
    iget-object v4, p0, Lakk;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->h()Ljava/util/List;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 479
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 480
    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnap:Lakl;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 483
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {v0, v4}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;)V

    .line 484
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->m()V

    .line 485
    iget-object v4, p0, Lakk;->mStoryGroupStoryCollections:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 487
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final k()Ljava/util/Collection;
    .locals 3
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
    .line 508
    iget-object v1, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 509
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 510
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
    .line 514
    const/4 v1, 0x0

    .line 515
    iget-object v2, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v2

    .line 516
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

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

    .line 517
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->q()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 520
    goto :goto_0

    .line 521
    :cond_0
    monitor-exit v2

    .line 522
    return v1

    .line 521
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
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 527
    iget-object v1, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

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

    .line 529
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->m()V

    goto :goto_0

    .line 531
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 664
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 665
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-static {}, Lbal;->d()Z

    move-result v3

    .line 669
    iget-object v4, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v4

    .line 670
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 671
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 672
    iget-object v6, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 675
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->s()I

    move-result v6

    if-eqz v6, :cond_0

    .line 677
    new-instance v6, Lakc;

    invoke-direct {v6, v0}, Lakc;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    .line 681
    invoke-virtual {v6}, Lakc;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    if-nez v3, :cond_0

    .line 683
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 686
    :cond_1
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 692
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 694
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 695
    return-object v1
.end method

.method public final o()Ljava/util/List;
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
    .line 702
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 705
    iget-object v3, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    monitor-enter v3

    .line 706
    :try_start_0
    iget-object v0, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

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

    .line 707
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 708
    iget-object v5, p0, Lakk;->mFriendStoryCollections:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 711
    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->A()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->s()I

    move-result v5

    if-nez v5, :cond_1

    .line 715
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 717
    :cond_1
    :try_start_1
    new-instance v5, Lakc;

    invoke-direct {v5, v0}, Lakc;-><init>(Lcom/snapchat/android/model/StoryCollection;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 724
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 728
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 730
    return-object v0
.end method
