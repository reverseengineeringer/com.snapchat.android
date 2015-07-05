.class public final Lawl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_LIST_SIZE:I = 0x5


# instance fields
.field public mAddedCount:I

.field public mAddedList:Ljava/util/Deque;
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lcgc;
    .end annotation
.end field

.field private mHeight:I

.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation build Lcgc;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mRemovedCount:I

.field mRemovedList:Ljava/util/Deque;
    .annotation build Lcgb;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lawl;->mAddedCount:I

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lawl;->mAddedList:Ljava/util/Deque;

    .line 29
    iput v1, p0, Lawl;->mRemovedCount:I

    .line 30
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lawl;->mRemovedList:Ljava/util/Deque;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lawl;->mWidth:I

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lawl;->mHeight:I

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lawl;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lawl;->mReference:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lawl;->mAddedCount:I

    iget v1, p0, Lawl;->mRemovedCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 58
    iget v0, p0, Lawl;->mRemovedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lawl;->mRemovedCount:I

    .line 59
    :goto_0
    iget-object v0, p0, Lawl;->mRemovedList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lawl;->mRemovedList:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lawl;->mRemovedList:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lawl;->mReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lawl;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method
