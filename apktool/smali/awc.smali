.class public final Lawc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 3

    .prologue
    .line 16
    invoke-static {}, Lbgp;->a()V

    .line 18
    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p2, Lavx;->mImageView:Landroid/widget/ImageView;

    .line 20
    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    instance-of v2, v0, Lawe;

    if-eqz v2, :cond_0

    .line 23
    check-cast v0, Lawe;

    .line 24
    iget-object v2, p2, Lavx;->mRequestId:Ljava/lang/String;

    iget-object v0, v0, Lawe;->mLoaderTask:Lawd;

    iget-object v0, v0, Lawd;->mRequest:Lavx;

    iget-object v0, v0, Lavx;->mRequestId:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    :cond_0
    return-void
.end method
