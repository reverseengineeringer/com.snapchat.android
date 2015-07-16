.class public final Lafp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laww;


# instance fields
.field private final a:Lcom/snapchat/android/discover/model/ChannelPage;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lafg$a;

.field private final e:Landroid/os/Bundle;

.field private final f:Lacy;


# direct methods
.method public constructor <init>(Lacy;Lcom/snapchat/android/discover/model/ChannelPage;Ljava/lang/String;ZLafg$a;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lafp;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    .line 38
    iput-object p3, p0, Lafp;->b:Ljava/lang/String;

    .line 39
    iput-boolean p4, p0, Lafp;->c:Z

    .line 40
    iput-object p5, p0, Lafp;->d:Lafg$a;

    .line 41
    iput-object p6, p0, Lafp;->e:Landroid/os/Bundle;

    .line 42
    iput-object p1, p0, Lafp;->f:Lacy;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lawm;Lawv;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    iget-object v4, p2, Lawv;->mImageView:Landroid/widget/ImageView;

    .line 49
    const/4 v1, 0x0

    .line 51
    iget-object v0, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 52
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lafp;->b:Ljava/lang/String;

    aput-object v5, v0, v2

    iget-boolean v5, p0, Lafp;->c:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v3

    .line 55
    iget-object v3, p0, Lafp;->f:Lacy;

    iget-object v5, p0, Lafp;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget-boolean v0, p0, Lafp;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->INVERTED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    :goto_0
    sget-object v6, Lacy$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, v3, Lacy;->a:Laej;

    invoke-virtual {v0}, Laej;->c()V

    :cond_0
    move-object v0, v1

    move v1, v2

    .line 67
    :goto_2
    iget-object v2, p0, Lafp;->d:Lafg$a;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lafp;->d:Lafg$a;

    iget-object v3, p0, Lafp;->e:Landroid/os/Bundle;

    invoke-interface {v2, v4, v0, v3, v1}, Lafg$a;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V

    .line 70
    :cond_1
    return-void

    .line 55
    :cond_2
    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->FILLED_ICON:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    goto :goto_0

    :pswitch_0
    iget-object v0, v3, Lacy;->c:Laed;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Laed;->b(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, v3, Lacy;->c:Laed;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Laed;->c(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v0, v3, Lacy;->c:Laed;

    sget-object v6, Lcom/snapchat/android/discover/model/MediaState;->NOT_STARTED:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v5, v6}, Laed;->d(Lcom/snapchat/android/discover/model/ChannelPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 58
    :cond_3
    if-eqz v4, :cond_5

    .line 59
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lafp;->b:Ljava/lang/String;

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lafp;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    .line 61
    iget-object v1, p1, Lawm;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lafp;->a:Lcom/snapchat/android/discover/model/ChannelPage;

    iget v2, v0, Lcom/snapchat/android/discover/model/ChannelPage;->h:I

    iget-boolean v5, p0, Lafp;->c:Z

    new-instance v0, Larb;

    invoke-direct {v0, v1}, Larb;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_4

    iput v6, v0, Larb;->b:F

    iget-object v1, v0, Larb;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Larb;->invalidateSelf()V

    iget-object v1, v0, Larb;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Larb;->invalidateSelf()V

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
