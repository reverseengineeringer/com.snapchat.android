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

.field protected mAdMetadata:Lbks;

.field public final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation
.end field

.field public final mStorySnapsMutex:Ljava/lang/Object;

.field protected mThumbnails:Lbkn;

.field public final mUnviewedStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lakl;",
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
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljavax/inject/Provider;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lbiv;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v5, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 54
    iput v4, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 99
    iput-boolean v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 100
    invoke-virtual {p1}, Lbiv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ldt;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Lbiv;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .line 104
    new-instance v2, Lakl;

    invoke-virtual {v0}, Lbiw;->a()Lbkh;

    move-result-object v3

    invoke-direct {v2, v3}, Lakl;-><init>(Lbkh;)V

    .line 107
    invoke-virtual {v2}, Lakl;->aD()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v4

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v0}, Lbiw;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, v2, Lakl;->mHasBeenViewed:Z

    .line 112
    invoke-virtual {v2}, Lakl;->az()V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Lbiv;->d()Lbks;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    .line 116
    invoke-virtual {p1}, Lbiv;->e()Lbkn;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    .line 118
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iget-object v0, v0, Lakl;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->c()V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
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
    .line 63
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljavax/inject/Provider;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljavax/inject/Provider;Lbks;Lbkn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Ljava/lang/Object;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lbks;",
            "Lbkn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 78
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 80
    iput-object p3, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p5, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    .line 83
    iput-object p6, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 54
    iput v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 88
    iput-object p2, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    .line 89
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iget-object v0, v0, Lakl;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->c()V

    .line 96
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/model/StoryCollection;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljavax/inject/Provider;Lbks;Lbkn;)V

    .line 73
    return-void
.end method

.method private E()Z
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private F()Z
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private G()J
    .locals 3

    .prologue
    .line 602
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v0

    monitor-exit v2

    .line 607
    :goto_0
    return-wide v0

    .line 606
    :cond_0
    monitor-exit v2

    .line 607
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private H()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 755
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    move v1, v0

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 760
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 758
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 762
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

.method private static a(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 508
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 509
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 511
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 431
    invoke-static {}, Lzz;->a()Lzz;

    move-result-object v3

    invoke-virtual {v3}, Lzz;->b()I

    move-result v3

    sub-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v3, v0

    .line 434
    :goto_0
    if-lt v3, v4, :cond_3

    .line 435
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 436
    invoke-virtual {v0}, Lakl;->N()Z

    move-result v5

    if-nez v5, :cond_2

    .line 437
    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {v0}, Lakl;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 450
    :goto_1
    return v0

    .line 444
    :cond_0
    invoke-virtual {v0}, Lakl;->M()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lakl;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    .line 445
    goto :goto_1

    .line 434
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 450
    :cond_3
    if-nez p1, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
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

    check-cast v0, Lakl;

    .line 187
    invoke-virtual {v0}, Lakl;->A()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
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

.method private h(Lakl;)Lakl;
    .locals 6
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 359
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

    check-cast v0, Lakl;

    .line 362
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v0

    .line 368
    goto :goto_0

    .line 369
    :cond_0
    monitor-exit v2

    .line 370
    return-object v1

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()I
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final A()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 639
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    monitor-exit v2

    .line 642
    :goto_1
    return v0

    .line 640
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lakp;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    goto :goto_0

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    iget-boolean v0, v0, Lakl;->mIsShared:Z

    monitor-exit v2

    goto :goto_1

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final B()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->LIVE:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    .line 682
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->RECENT_UPDATES:Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    goto :goto_0
.end method

.method public final C()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lavx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    .line 700
    if-eqz v1, :cond_1

    .line 701
    invoke-virtual {v1}, Lbkn;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 702
    new-instance v2, Lavx;

    iget-object v3, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v3}, Lbkn;->c()Lbkm;

    move-result-object v3

    invoke-direct {v2, v3}, Lavx;-><init>(Lbkm;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    :cond_0
    invoke-virtual {v1}, Lbkn;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 705
    new-instance v1, Lavx;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v2}, Lbkn;->a()Lbkm;

    move-result-object v2

    invoke-direct {v1, v2}, Lavx;-><init>(Lbkm;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_1
    return-object v0
.end method

.method public final D()Lavx;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 714
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    if-nez v1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-object v0

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v1}, Lbkn;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    new-instance v0, Lavx;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v1}, Lbkn;->c()Lbkm;

    move-result-object v1

    invoke-direct {v0, v1}, Lavx;-><init>(Lbkm;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v1}, Lbkn;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    new-instance v0, Lavx;

    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    invoke-virtual {v1}, Lbkn;->a()Lbkm;

    move-result-object v1

    invoke-direct {v0, v1}, Lavx;-><init>(Lbkm;)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-static {v1, v0}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 399
    invoke-virtual {v0, p1}, Lakl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 402
    :goto_0
    return-object v0

    .line 401
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    const-string v0, ""

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(ILakl;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lakl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v3

    .line 456
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 457
    if-eqz p2, :cond_1

    move v2, v1

    .line 458
    :goto_0
    if-ltz v2, :cond_1

    .line 459
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0, p2}, Lakl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    add-int/lit8 v0, v2, -0x1

    .line 467
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

    .line 458
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
    .line 159
    iput p1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    .line 160
    return-void
.end method

.method public final a(Lbiv;Z)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 515
    iget-object v7, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 516
    const/4 v1, 0x3

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lbiv;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    const/4 v5, 0x2

    invoke-virtual {p1}, Lbiv;->d()Lbks;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v5

    .line 522
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    if-nez v1, :cond_0

    .line 524
    invoke-virtual {p1}, Lbiv;->d()Lbks;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v1}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v8

    .line 528
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v1}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 531
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 532
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 535
    invoke-virtual {p1}, Lbiv;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbiw;

    invoke-virtual {v1}, Lbiw;->a()Lbkh;

    move-result-object v6

    invoke-virtual {v6}, Lbkh;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 576
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    .line 516
    goto :goto_0

    .line 535
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v1, v10

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 538
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lbiw;

    move-object v2, v0

    .line 539
    new-instance v1, Lakl;

    invoke-virtual {v2}, Lbiw;->a()Lbkh;

    move-result-object v5

    invoke-direct {v1, v5}, Lakl;-><init>(Lbkh;)V

    .line 542
    invoke-virtual {v1}, Lakl;->aD()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 543
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    goto :goto_2

    .line 547
    :cond_5
    invoke-virtual {v1}, Lakl;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 548
    if-eqz v5, :cond_a

    .line 549
    invoke-virtual {v1}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lakl;

    move-object v6, v1

    .line 555
    :goto_3
    if-eqz p2, :cond_6

    if-nez v5, :cond_7

    .line 557
    :cond_6
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_7
    if-eqz p2, :cond_8

    invoke-virtual {v6}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_8
    move v5, v4

    .line 562
    :goto_4
    invoke-virtual {v2}, Lbiw;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v6}, Lakl;->A()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    move v1, v4

    .line 563
    :goto_5
    iput-boolean v1, v6, Lakl;->mHasBeenViewed:Z

    .line 564
    if-nez v1, :cond_4

    if-eqz v5, :cond_4

    .line 565
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 551
    :cond_a
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 552
    invoke-virtual {v1}, Lakl;->az()V

    move-object v6, v1

    goto :goto_3

    :cond_b
    move v5, v3

    .line 560
    goto :goto_4

    :cond_c
    move v1, v3

    .line 562
    goto :goto_5

    .line 568
    :cond_d
    if-eqz p2, :cond_e

    .line 569
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 570
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 575
    :cond_e
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->r()V

    .line 576
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lbkn;)V
    .locals 0
    .param p1    # Lbkn;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 135
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    .line 136
    return-void
.end method

.method public final a(Lbks;)V
    .locals 3
    .param p1    # Lbks;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 167
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public a(Lakl;)Z
    .locals 1
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lakl;)Lakl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdIntervalIndex:I

    return v0
.end method

.method public b(Lakl;)I
    .locals 5
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 492
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

    check-cast v0, Lakl;

    .line 495
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 501
    goto :goto_0

    .line 502
    :cond_0
    monitor-exit v2

    .line 503
    return v1

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lakl;
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 310
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

    check-cast v0, Lakl;

    .line 311
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    monitor-exit v1

    .line 316
    :goto_0
    return-object v0

    .line 315
    :cond_1
    monitor-exit v1

    .line 316
    const/4 v0, 0x0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lakl;)Lakl;
    .locals 1
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lakl;)Lakl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 40
    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {p1}, Lcom/snapchat/android/model/StoryCollection;->G()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->G()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbgu;->a(JJ)I

    move-result v0

    return v0
.end method

.method public d()Lakl;
    .locals 3
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    monitor-exit v1

    .line 239
    :goto_0
    return-object v0

    .line 238
    :cond_0
    monitor-exit v1

    .line 239
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lakl;)Lakl;
    .locals 3
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StoryCollection;->h(Lakl;)Lakl;

    move-result-object v0

    .line 342
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 343
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->H()V

    .line 344
    return-object v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Lakl;)V
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p1}, Lakl;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
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
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 729
    if-nez p1, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 730
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    iget-object v1, p1, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ldt;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f(Lakl;)V
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    .line 305
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g(Lakl;)I
    .locals 7
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 615
    const-wide/16 v0, 0x0

    .line 616
    iget-object v4, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 617
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

    check-cast v0, Lakl;

    .line 620
    invoke-virtual {v0}, Lakl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lakl;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    invoke-virtual {v0}, Lakl;->G()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 626
    goto :goto_0

    .line 627
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 6

    .prologue
    .line 266
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 268
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 270
    invoke-virtual {v0}, Lakl;->ay()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lakl;->mWas404ResponseReceived:Z

    if-eqz v3, :cond_0

    .line 271
    :cond_1
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lakl;->ay()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-boolean v0, v0, Lakl;->mWas404ResponseReceived:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    .line 273
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 276
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->c()V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->F()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x24d

    .line 740
    mul-int/lit8 v0, v0, 0x1f

    const-string v1, "StoryCollection"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->E()Z

    move-result v0

    return v0
.end method

.method public final j()Lbkn;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mThumbnails:Lbkn;

    return-object v0
.end method

.method public final k()Lbks;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mAdMetadata:Lbks;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    .line 172
    return-void
.end method

.method public final n()Z
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-static {v1, v0}, Lauk;->d(Ljava/lang/String;Lakp;)Z

    move-result v0

    return v0
.end method

.method public p()Lavx;
    .locals 5

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->D()Lavx;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-object v0

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryCollection;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 693
    :goto_1
    new-instance v1, Lavx;

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

    invoke-direct {v1, v0, v2, v3}, Lavx;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 691
    :cond_1
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_1
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    monitor-exit v1

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-boolean v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserHasSeenInFeed:Z

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final r()V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 208
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final s()I
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-static {v0}, Ldt;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 746
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 747
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

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mUsername:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    invoke-static {v1, v0}, Lauk;->e(Ljava/lang/String;Lakp;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lakl;
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnaps:Ljava/util/List;

    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->o()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    monitor-exit v1

    return-object v0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final w()I
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 378
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

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final x()Lakl;
    .locals 4

    .prologue
    .line 383
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    monitor-exit v1

    .line 391
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    .line 389
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 390
    invoke-direct {p0}, Lcom/snapchat/android/model/StoryCollection;->H()V

    .line 391
    monitor-exit v1

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final y()Z
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z()Z
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/snapchat/android/model/StoryCollection;->mStorySnapsMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StoryCollection;->mUnviewedStorySnaps:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/snapchat/android/model/StoryCollection;->a(Ljava/util/List;Z)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
