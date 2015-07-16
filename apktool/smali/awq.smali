.class public final Lawq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mBitmapPool:Lawo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-direct {p0, v0}, Lawq;-><init>(Lawo;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lawo;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lawq;->mBitmapPool:Lawo;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Z)V
    .locals 3
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 47
    sget-boolean v0, Latt;->SUPPORTS_UNEQUAL_SIZE_BITMAP_REUSE:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lawq;->mBitmapPool:Lawo;

    invoke-virtual {v1, v0}, Lawo;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    :cond_2
    return-void

    .line 47
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method
