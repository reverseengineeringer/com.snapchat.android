.class public final Laep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# instance fields
.field private final a:Lcom/snapchat/android/discover/model/ChannelPage;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Laeg$a;

.field private final e:Landroid/os/Bundle;

.field private final f:Laby;


# direct methods
.method public constructor <init>(Laby;Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;ZLaeg$a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Laep;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 38
    iput-object p3, p0, Laep;->b:Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Laep;->c:Z

    .line 40
    iput-object p5, p0, Laep;->d:Laeg$a;

    .line 41
    iput-object p6, p0, Laep;->e:Landroid/os/Bundle;

    .line 42
    iput-object p1, p0, Laep;->f:Laby;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v4, p2, Lavx;->mImageView:Landroid/widget/ImageView;

    .line 49
    const/4 v1, 0x0

    .line 51
    iget-object v0, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 52
    const-string v0, "InternalBitmapDecodedCallback"

    const-string v5, "DISCOVER-MEDIA-BRAND-ICON: %s could not be decoded. Inverted? %b "

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Laep;->b:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-boolean v7, p0, Laep;->c:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v3, p0, Laep;->f:Laby;

    iget-object v5, p0, Laep;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-boolean v0, p0, Laep;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    :goto_0
    sget-object v6, Laby$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, v3, Laby;->a:Ladj;

    invoke-virtual {v0}, Ladj;->b()V

    :cond_0
    move-object v0, v1

    move v1, v2

    .line 67
    :goto_2
    iget-object v2, p0, Laep;->d:Laeg$a;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Laep;->d:Laeg$a;

    iget-object v3, p0, Laep;->e:Landroid/os/Bundle;

    invoke-interface {v2, v4, v0, v3, v1}, Laeg$a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V

    .line 70
    :cond_1
    return-void

    .line 55
    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    goto :goto_0

    :pswitch_0
    iget-object v0, v3, Laby;->c:Ladd;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Ladd;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, v3, Laby;->c:Ladd;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Ladd;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v0, v3, Laby;->c:Ladd;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Ladd;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 58
    :cond_3
    if-eqz v4, :cond_5

    .line 59
    const-string v0, "InternalBitmapDecodedCallback"

    const-string v1, "DISCOVER-MEDIA-BRAND-ICON: %s decoded. Inverted? %b "

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Laep;->b:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-boolean v2, p0, Laep;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v0, v1, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v1, p1, Lavo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Laep;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-boolean v5, p0, Laep;->c:Z

    new-instance v0, Laqc;

    invoke-direct {v0, v1}, Laqc;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_4

    iput v7, v0, Laqc;->b:F

    iget-object v1, v0, Laqc;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Laqc;->invalidateSelf()V

    iget-object v1, v0, Laqc;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Laqc;->invalidateSelf()V

    .line 63
    :cond_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v1, v3

    .line 64
    goto :goto_2

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_2

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
