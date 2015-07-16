.class public Lcom/snapchat/android/ui/smartfilters/GeofilterView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/android/ui/SelfScalingImageView;

.field public final b:Lapy;

.field public c:Z

.field private final d:Lcom/snapchat/android/ui/SelfScalingImageView;

.field private final e:Lajr;

.field private final f:Lbhq;

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lajr;)V
    .locals 3
    .param p2    # Lajr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->g:F

    .line 35
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    const v1, 0x7f040069

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SelfScalingImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->d:Lcom/snapchat/android/ui/SelfScalingImageView;

    .line 38
    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SelfScalingImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    .line 39
    iput-object p2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Z

    .line 41
    new-instance v0, Lapy;

    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    invoke-direct {v0, p0, v1}, Lapy;-><init>(Lcom/snapchat/android/ui/smartfilters/GeofilterView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lapy;

    .line 43
    new-instance v0, Lbhq;

    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    invoke-direct {v0, v1, p0}, Lbhq;-><init>(Lajr;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->f:Lbhq;

    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b()V

    .line 45
    return-void
.end method

.method private b()V
    .locals 6
    .annotation build Lcdn;
    .end annotation

    .prologue
    const v5, 0x7f02026d

    .line 65
    invoke-static {}, Lbhp;->a()V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    iget-boolean v0, v0, Lajr;->mIsDynamic:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    invoke-virtual {v0}, Lajr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    invoke-virtual {v0}, Lajr;->b()Lcht;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    invoke-virtual {v0}, Lajr;->b()Lcht;

    move-result-object v0

    invoke-static {}, Lcht;->c()Lcht;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcht;->b(Lcic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    invoke-virtual {v0}, Lajr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->f:Lbhq;

    iget-object v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->d:Lcom/snapchat/android/ui/SelfScalingImageView;

    iget-object v3, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    iget v3, v3, Lajr;->mLayoutGravity:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lbhq;->a(Lcom/snapchat/android/ui/SelfScalingImageView;Landroid/graphics/Bitmap;IZ)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    iget-boolean v0, v0, Lajr;->mIsSponsored:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Z

    if-nez v0, :cond_1

    .line 80
    iget-object v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->f:Lbhq;

    iget-object v3, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    const/4 v0, 0x0

    iget-object v1, v2, Lbhq;->mGeofilter:Lajr;

    iget-object v1, v1, Lajr;->mSponsoredSlugImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, v2, Lbhq;->mGeofilter:Lajr;

    iget-object v0, v0, Lajr;->mSponsoredSlugImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    iget-object v0, v2, Lbhq;->mGeofilter:Lajr;

    iget-object v0, v0, Lajr;->mSponsoredSlugPosition:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;

    if-eqz v0, :cond_0

    sget-object v4, Lbhq$1;->$SwitchMap$com$snapchat$android$model$server$GeofilterResponse$SponsoredSlugPosition:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/16 v0, 0x55

    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v0, v4}, Lbhq;->a(Lcom/snapchat/android/ui/SelfScalingImageView;Landroid/graphics/Bitmap;IZ)V

    .line 82
    :cond_1
    return-void

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    iget-object v0, v0, Lajr;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 80
    :cond_3
    iget-object v1, v2, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v2, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x33

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x31

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x35

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x13

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x11

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x15

    goto :goto_2

    :pswitch_6
    const/16 v0, 0x53

    goto :goto_2

    :pswitch_7
    const/16 v0, 0x51

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->c:Z

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b:Lapy;

    iget-object v1, v0, Lapy;->f:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lapy;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    iget-object v1, v0, Lapy;->f:Ljava/util/Date;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lapy;->f:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, v0, Lapy;->f:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, v0, Lapy;->c:J

    sub-long v2, v4, v2

    iput-wide v2, v0, Lapy;->c:J

    iget-wide v2, v0, Lapy;->c:J

    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    iget v1, v0, Lapy;->d:I

    int-to-long v2, v1

    iget-wide v4, v0, Lapy;->c:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lapy;->d:I

    iput-wide v8, v0, Lapy;->c:J

    iget v1, v0, Lapy;->d:I

    if-gez v1, :cond_0

    iput v6, v0, Lapy;->d:I

    :cond_0
    iget-object v1, v0, Lapy;->b:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lapy;->f:Ljava/util/Date;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lapy;->g:Z

    .line 102
    :cond_1
    return-void
.end method

.method public getFilterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    iget-object v0, v0, Lajr;->mFilterId:Ljava/lang/String;

    return-object v0
.end method

.method public getGeofilter()Lajr;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->e:Lajr;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 49
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    sub-int v0, p4, p2

    .line 51
    sub-int v1, p5, p3

    .line 53
    iget v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->h:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->i:I

    if-eq v1, v2, :cond_1

    .line 54
    :cond_0
    iput v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->h:I

    .line 55
    iput v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->i:I

    .line 56
    invoke-direct {p0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->b()V

    .line 58
    :cond_1
    return-void
.end method

.method public setVisibilityOfPreviewOnlyContent(I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    if-eqz v0, :cond_0

    .line 116
    if-nez p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    iget v1, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->g:F

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setAlpha(F)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->g:F

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->a:Lcom/snapchat/android/ui/SelfScalingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setAlpha(F)V

    goto :goto_0
.end method
