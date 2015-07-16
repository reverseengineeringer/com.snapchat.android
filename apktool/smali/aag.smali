.class public abstract Laag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laah$a;


# static fields
.field private static final TAG:Ljava/lang/String; = "BuildThumbnailTask"


# instance fields
.field private final mBitmapLoader:Lawn;

.field public final mCache:Laxn;

.field public final mCacheKey:Ljava/lang/String;

.field public final mDownloader:Laah;

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 27
    new-instance v1, Lawn;

    invoke-direct {v1, p1}, Lawn;-><init>(Landroid/content/Context;)V

    new-instance v2, Laah;

    invoke-direct {v2}, Laah;-><init>()V

    sget-object v3, Laxo;->STORY_SNAP_RECEIVED_THUMBNAIL_CACHE:Laxn;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Laag;-><init>(Lawn;Laah;Laxn;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lawn;Laah;Laxn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Laag;->mDownloader:Laah;

    .line 35
    iput-object p3, p0, Laag;->mCache:Laxn;

    .line 36
    iput-object p1, p0, Laag;->mBitmapLoader:Lawn;

    .line 37
    iput-object p4, p0, Laag;->mUrl:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Laag;->mCacheKey:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lawv$a;

    invoke-direct {v0}, Lawv$a;-><init>()V

    iget-object v1, p0, Laag;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Laag;->mCache:Laxn;

    iget-object v3, p0, Laag;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lawv$a;->a(Ljava/lang/String;Laxn;Ljava/lang/String;)Lawv$a;

    move-result-object v0

    invoke-virtual {v0}, Lawv$a;->a()Lawv;

    move-result-object v0

    .line 64
    iget-object v1, p0, Laag;->mBitmapLoader:Lawn;

    invoke-virtual {v1, v0}, Lawn;->a(Lawv;)Lawm;

    move-result-object v0

    .line 68
    iget-object v0, v0, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Laag;->a(Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method public abstract a(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param
.end method
