.class final Lanl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanl;->a(Laje;ZLcom/snapchat/android/rendering/SnapMediaRenderer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

.field final synthetic b:Laje;

.field final synthetic c:Lanl;


# direct methods
.method constructor <init>(Lanl;Lcom/snapchat/android/rendering/SnapMediaRenderer$a;Laje;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lanl$1;->c:Lanl;

    iput-object p2, p0, Lanl$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    iput-object p3, p0, Lanl$1;->b:Laje;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lanl;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SNAP-VIEW: onBitmap loaded for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lanl$1;->c:Lanl;

    invoke-static {v4}, Lanl;->a(Lanl;)Laje;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    .line 115
    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lanl$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    sget-object v1, Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;->MEDIA_UNAVAILABLE_LOCALLY:Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;

    invoke-interface {v0, v1}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(Lcom/snapchat/android/rendering/SnapMediaRenderer$ErrorCode;)V

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v1, p2, Lavx;->mImageView:Landroid/widget/ImageView;

    .line 121
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_1
    iget-object v1, p0, Lanl$1;->b:Laje;

    invoke-virtual {v1}, Laje;->F()D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    .line 126
    iget-object v2, p0, Lanl$1;->a:Lcom/snapchat/android/rendering/SnapMediaRenderer$a;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-interface {v2, v1, v3, v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$a;->a(III)V

    goto :goto_0
.end method
