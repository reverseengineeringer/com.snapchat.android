.class public final Lauz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCacheKey:Ljava/lang/String;

.field final mStorySnaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;"
        }
    .end annotation
.end field

.field final mType:Lcom/snapchat/android/stories/StoriesThumbnailType;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/stories/StoriesThumbnailType;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lauz;->mType:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 22
    iput-object p2, p0, Lauz;->mStorySnaps:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lauz;->mCacheKey:Ljava/lang/String;

    .line 24
    return-void
.end method
