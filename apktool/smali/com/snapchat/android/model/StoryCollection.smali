.class public Lcom/snapchat/android/model/StoryCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/StoryCollection;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryCollection"


# instance fields
.field protected mAdIntervalIndex:I

.field protected mAdMetadata:Lbjr;

.field public final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public final mStorySnapsMutex:Ljava/lang/Object;

.field public final mUnviewedStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field public mUserHasSeenInFeed:Z

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljavax/inject/Provider;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lbhv;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 47
    iput-boolean v6, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 48
    iput v5, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 92
    iput-boolean v5, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lbhv;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Lbhv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhw;

    .line 96
    new-instance v2, Lajr;

    invoke-virtual {v0}, Lbhw;->a()Lbjg;

    move-result-object v3

    invoke-direct {v2, v3}, Lajr;-><init>(Lbjg;)V

    .line 99
    invoke-virtual {v2}, Lajr;->aI()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v0, "StoryCollection"

    const-string v3, "Ignoring legacy ad slot %s from server response."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Lbhw;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, v2, Lajr;->mHasBeenViewed:Z

    .line 104
    invoke-virtual {v2}, Lajr;->aE()V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Lbhv;->d()Lbjr;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    .line 110
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v0, v0, Lajr;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->a()V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
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
    .line 57
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljavax/inject/Provider;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;Lbjr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lbjr;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 74
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 76
    iput-object p3, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p4, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 48
    iput v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 82
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 84
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 86
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-object v0, v0, Lajr;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->a()V

    goto :goto_0
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljavax/inject/Provider;Lbjr;)V

    .line 69
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 455
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 456
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_0
    return-object v1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 157
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 160
    invoke-virtual {v0}, Lajr;->z()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
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

.method private static a(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 378
    add-int/lit8 v3, v0, -0x3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v0

    .line 381
    :goto_0
    if-lt v3, v4, :cond_3

    .line 382
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 383
    invoke-virtual {v0}, Lajr;->M()Z

    move-result v5

    if-nez v5, :cond_2

    .line 384
    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {v0}, Lajr;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 397
    :goto_1
    return v0

    .line 391
    :cond_0
    invoke-virtual {v0}, Lajr;->L()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lajr;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 392
    goto :goto_1

    .line 381
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 397
    :cond_3
    if-nez p1, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private b()Ljava/util/List;
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
    .line 215
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h(Lajr;)Lajr;
    .locals 6
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 314
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v0

    .line 320
    goto :goto_0

    .line 321
    :cond_0
    monitor-exit v2

    .line 322
    return-object v1

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()Z
    .locals 3

    .prologue
    .line 371
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()J
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v0

    .line 572
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 699
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 700
    :try_start_0
    const-string v1, "StoryCollection"

    const-string v3, "Collection for %s - unviewed:%d, total:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 702
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 704
    const-string v3, "StoryCollection"

    const-string v4, "Unviewed #%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 706
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A()Lajr;
    .locals 6

    .prologue
    .line 335
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x0

    monitor-exit v1

    .line 343
    :goto_0
    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 341
    const-string v2, "StoryCollection"

    const-string v3, "Returning story snap %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->k()V

    .line 343
    monitor-exit v1

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final B()Z
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final C()Z
    .locals 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final D()Z
    .locals 3

    .prologue
    .line 602
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 604
    invoke-virtual {v0}, Lajr;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    .line 607
    :goto_0
    return v0

    .line 606
    :cond_1
    monitor-exit v1

    .line 607
    const/4 v0, 0x0

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final E()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit v2

    .line 621
    :goto_1
    return v0

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lajv;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    goto :goto_0

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    iget-boolean v0, v0, Lajr;->mIsShared:Z

    monitor-exit v2

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final F()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    .locals 1

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    .line 661
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 349
    invoke-virtual {v0, p1}, Lajr;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILajr;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lajr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v3

    .line 403
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 404
    if-eqz p2, :cond_1

    move v2, v1

    .line 405
    :goto_0
    if-ltz v2, :cond_1

    .line 406
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0, p2}, Lajr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    add-int/lit8 v0, v2, -0x1

    .line 414
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 405
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 137
    return-void
.end method

.method public final a(Lbhv;Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbhv;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v5, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 463
    :try_start_0
    const-string v2, "StoryCollection"

    const-string v3, "Updating story %s with result from server (delta:%s, ads:%b)"

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lbhv;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    const/4 v6, 0x2

    invoke-virtual {p1}, Lbhv;->d()Lbjr;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p1}, Lbhv;->d()Lbjr;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v1}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v6

    .line 475
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v1}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 476
    invoke-static {p2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 479
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 480
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 483
    invoke-virtual {p1}, Lbhv;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhw;

    invoke-virtual {v1}, Lbhw;->a()Lbjg;

    move-result-object v4

    invoke-virtual {v4}, Lbjg;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 542
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 463
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 483
    :cond_2
    :try_start_1
    const-string v1, "StoryCollection"

    const-string v9, "Found duplicated story ID in server response: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v1, v9, v10}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 486
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lbhw;

    move-object v2, v0

    .line 487
    new-instance v1, Lajr;

    invoke-virtual {v2}, Lbhw;->a()Lbjg;

    move-result-object v3

    invoke-direct {v1, v3}, Lajr;-><init>(Lbjg;)V

    .line 490
    invoke-virtual {v1}, Lajr;->aI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 491
    const-string v2, "StoryCollection"

    const-string v3, "Ignoring legacy ad slot %s from server response."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v4, v10

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 495
    :cond_5
    invoke-virtual {v1}, Lajr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 496
    if-eqz v3, :cond_a

    .line 497
    iget-object v4, v1, Lajr;->mSponsoredStoryMetadata:Lbje;

    .line 498
    invoke-virtual {v1}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lajr;

    .line 499
    iput-object v4, v1, Lajr;->mSponsoredStoryMetadata:Lbje;

    move-object v4, v1

    .line 510
    :goto_3
    if-eqz p3, :cond_6

    if-nez v3, :cond_7

    .line 512
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {v4}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    const/4 v1, 0x1

    move v3, v1

    .line 516
    :goto_4
    invoke-virtual {v4}, Lajr;->aw()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 519
    invoke-virtual {v2}, Lbhw;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 520
    const/4 v1, 0x0

    iput-boolean v1, v4, Lajr;->mHasBeenViewed:Z

    .line 522
    :cond_9
    invoke-virtual {v4}, Lajr;->z()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    .line 523
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 501
    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 502
    invoke-virtual {v1}, Lajr;->aE()V

    .line 503
    invoke-virtual {v1}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 504
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    goto :goto_3

    .line 506
    :cond_b
    const-string v4, "StoryCollection"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Story "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lajr;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was found in database but not in the data model."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4, v10, v11}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_3

    .line 515
    :cond_c
    const/4 v1, 0x0

    move v3, v1

    goto :goto_4

    .line 527
    :cond_d
    invoke-virtual {v2}, Lbhw;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v4}, Lajr;->z()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    const/4 v1, 0x1

    .line 528
    :goto_5
    iput-boolean v1, v4, Lajr;->mHasBeenViewed:Z

    .line 529
    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    .line 530
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 527
    :cond_f
    const/4 v1, 0x0

    goto :goto_5

    .line 534
    :cond_10
    if-eqz p3, :cond_11

    .line 535
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    :cond_11
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->v()V

    .line 542
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lbjr;)V
    .locals 5
    .param p1    # Lbjr;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 143
    const-string v0, "StoryCollection"

    const-string v1, "Setting ad metadata for %s to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    .line 145
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public a(Lajr;)Z
    .locals 1
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lajr;)Lajr;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lajr;)I
    .locals 5
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 442
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 448
    goto :goto_0

    .line 449
    :cond_0
    monitor-exit v2

    .line 450
    return v1

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lajr;
    .locals 4

    .prologue
    .line 263
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 265
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    monitor-exit v1

    .line 270
    :goto_0
    return-object v0

    .line 269
    :cond_1
    monitor-exit v1

    .line 270
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lajr;)Lajr;
    .locals 1
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lajr;)Lajr;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 36
    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {p1}, Lcom/snapchat/android/model/StoryCollection;->j()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->j()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbfu;->a(JJ)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    return v0
.end method

.method public d(Lajr;)Lajr;
    .locals 5
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lajr;)Lajr;

    move-result-object v0

    .line 294
    const-string v1, "StoryCollection"

    const-string v2, "getNextSnapToView returning %s. Supplied current snap is %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->k()V

    .line 296
    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
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
    .line 190
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    return-object v0
.end method

.method public final e(Lajr;)V
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {p1}, Lajr;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 673
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 1
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
    .line 203
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lajr;)V
    .locals 6

    .prologue
    .line 256
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    const-string v2, "StoryCollection"

    const-string v3, "Removing %s from unviewed story snaps, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(Lajr;)I
    .locals 7
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 580
    const-wide/16 v0, 0x0

    .line 581
    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 582
    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 585
    invoke-virtual {v0}, Lajr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lajr;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    invoke-virtual {v0}, Lajr;->F()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 591
    goto :goto_0

    .line 592
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 592
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 8

    .prologue
    .line 232
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    .line 236
    invoke-virtual {v0}, Lajr;->aD()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lajr;->mWas404ResponseReceived:Z

    if-eqz v3, :cond_0

    .line 237
    :cond_1
    const-string v3, "StoryCollection"

    const-string v4, "Removing story snap %s from %s, expired:%b 404ed:%b"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lajr;->aD()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-boolean v0, v0, Lajr;->mWas404ResponseReceived:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->a()V

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x24d

    .line 684
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "StoryCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 685
    return v0
.end method

.method public m()Lauz;
    .locals 5

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 668
    :goto_0
    new-instance v1, Lauz;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&storyCollection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 665
    :cond_0
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->c()Z

    move-result v0

    return v0
.end method

.method public final s()Lbjr;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbjr;

    return-object v0
.end method

.method public final t()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 690
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 691
    :try_start_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v2, Lorg/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    const-string v2, "username"

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v2, "count"

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;I)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    const-string v2, "unviewedCount"

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;I)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    goto :goto_0
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
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
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    return-object v0
.end method

.method public final x()Ljava/util/List;
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
    .line 221
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final y()Lajr;
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z()I
    .locals 4

    .prologue
    .line 329
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    monitor-exit v1

    return v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
