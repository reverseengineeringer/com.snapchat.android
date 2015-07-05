.class public Lbai;
.super Landroid/text/style/DynamicDrawableSpan;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmojiSpan"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private final mResourceId:I

.field private final mSize:I

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 31
    iput-object p1, p0, Lbai;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lbai;->mResourceId:I

    .line 33
    iput p3, p0, Lbai;->mWidth:I

    .line 34
    iput p3, p0, Lbai;->mHeight:I

    .line 35
    iput p3, p0, Lbai;->mSize:I

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lbai;->mDrawableReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbai;->mDrawableReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lbai;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbai;->mDrawableReference:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lbai;->mDrawableReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    iget v1, p0, Lbai;->mVerticalAlignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 62
    sub-int v1, p8, p6

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lbai;->mTop:I

    sub-int/2addr v1, v2

    .line 67
    :goto_0
    int-to-float v1, v1

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    return-void

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p8, v1

    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 40
    iget-object v0, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 42
    :try_start_0
    iget-object v0, p0, Lbai;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lbai;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 43
    iget v0, p0, Lbai;->mSize:I

    iput v0, p0, Lbai;->mHeight:I

    .line 44
    iget v0, p0, Lbai;->mHeight:I

    iget-object v1, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lbai;->mWidth:I

    .line 45
    iget v0, p0, Lbai;->mSize:I

    iget v1, p0, Lbai;->mHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbai;->mTop:I

    .line 46
    iget-object v0, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lbai;->mTop:I

    iget v3, p0, Lbai;->mWidth:I

    iget v4, p0, Lbai;->mTop:I

    iget v5, p0, Lbai;->mHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    iget-object v0, p0, Lbai;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "EmojiSpan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get drawable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
