.class final Lavw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavw;
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

.field final synthetic this$0:Lavw;


# direct methods
.method public constructor <init>(Lavw;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 76
    iput-object p1, p0, Lavw$a;->this$0:Lavw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavw$a;->mIsExpired:Z

    .line 77
    iput-object p2, p0, Lavw$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 78
    return-void
.end method

.method public constructor <init>(Lavw;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lakl;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    iput-object p1, p0, Lavw$a;->this$0:Lavw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v2, p0, Lavw$a;->mIsExpired:Z

    .line 69
    iput-object p2, p0, Lavw$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lavw$a;->mThumbnailCreationTime:J

    .line 72
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v0

    iput-wide v0, p0, Lavw$a;->mFirstStoryTimestamp:J

    .line 73
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakl;

    invoke-virtual {v0}, Lakl;->U()J

    move-result-wide v0

    iput-wide v0, p0, Lavw$a;->mLastStoryTimestamp:J

    .line 74
    return-void
.end method
