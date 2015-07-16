.class public final Lavx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCacheKey:Ljava/lang/String;

.field private final mClock:Lbhk;

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

.field final mThumbnail:Lbkm;

.field final mType:Lcom/snapchat/android/stories/StoriesThumbnailType;


# direct methods
.method public constructor <init>(Lbkm;)V
    .locals 6
    .param p1    # Lbkm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 35
    sget-object v1, Lcom/snapchat/android/stories/StoriesThumbnailType;->SPECIFIED_BY_METADATA:Lcom/snapchat/android/stories/StoriesThumbnailType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lbkm;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lbhk;

    invoke-direct {v5}, Lbhk;-><init>()V

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lavx;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;Lbkm;Lbhk;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/stories/StoriesThumbnailType;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    const/4 v4, 0x0

    new-instance v5, Lbhk;

    invoke-direct {v5}, Lbhk;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lavx;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;Lbkm;Lbhk;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;Lbkm;Lbhk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/stories/StoriesThumbnailType;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;",
            "Ljava/lang/String;",
            "Lbkm;",
            "Lbhk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lavx;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 43
    iput-object p2, p0, Lavx;->mStorySnaps:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lavx;->mThumbnail:Lbkm;

    .line 45
    iput-object p3, p0, Lavx;->mCacheKey:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lavx;->mClock:Lbhk;

    .line 47
    return-void
.end method
