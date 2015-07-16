.class public final Lbhq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhq$1;
    }
.end annotation


# instance fields
.field public final mGeofilter:Lajr;

.field public final mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;


# direct methods
.method public constructor <init>(Lajr;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lbhq;->mGeofilter:Lajr;

    .line 29
    iput-object p2, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/ui/SelfScalingImageView;Landroid/graphics/Bitmap;IZ)V
    .locals 9
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lr;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0xf

    const/16 v3, 0x9

    const v8, 0x7f09002c

    const v7, 0x7f090003

    .line 40
    if-nez p2, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lavp;->d(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v0, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lawf;->d(Landroid/content/Context;)I

    move-result v0

    .line 47
    invoke-static {p3, v0}, Lawf;->a(II)I

    move-result v5

    .line 48
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SelfScalingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    and-int/lit8 v1, v5, 0x3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v4, v3

    :goto_1
    and-int/lit8 v1, v5, 0x30

    const/16 v6, 0x30

    if-ne v1, v6, :cond_3

    const/16 v1, 0xa

    :goto_2
    if-gt v3, v2, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v5, 0x5

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    const/16 v1, 0xb

    move v4, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xe

    move v4, v1

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v5, 0x50

    const/16 v6, 0x50

    if-ne v1, v6, :cond_4

    const/16 v1, 0xc

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    if-eqz p4, :cond_7

    .line 53
    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lawf;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 58
    :goto_3
    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 53
    :cond_6
    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lbhq;->mGeofilterView:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/smartfilters/GeofilterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 55
    :cond_7
    iget-object v1, p0, Lbhq;->mGeofilter:Lajr;

    iget-object v1, v1, Lajr;->mLayoutScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    invoke-virtual {p1, v5}, Lcom/snapchat/android/ui/SelfScalingImageView;->setGravity(I)V

    goto :goto_3
.end method
