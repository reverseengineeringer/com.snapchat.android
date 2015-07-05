.class final Lauy$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mFirstStoryTimestamp:J

.field mIsExpired:Z

.field mLastStoryTimestamp:J

.field mThumbnailCreationTime:J

.field final synthetic this$0:Lauy;


# direct methods
.method public constructor <init>(Lauy;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lajr;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-object p1, p0, Lauy$a;->this$0:Lauy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lauy$a;->mIsExpired:Z

    .line 64
    iput-object p2, p0, Lauy$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lauy$a;->mThumbnailCreationTime:J

    .line 67
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v0

    iput-wide v0, p0, Lauy$a;->mFirstStoryTimestamp:J

    .line 68
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajr;

    invoke-virtual {v0}, Lajr;->W()J

    move-result-wide v0

    iput-wide v0, p0, Lauy$a;->mLastStoryTimestamp:J

    .line 69
    return-void
.end method
