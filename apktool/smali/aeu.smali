.class public final Laeu;
.super Laey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laeu$2;
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lawn;

.field private final d:Lafv;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/snapchat/android/ui/FitWidthViewGroup;

.field private g:Landroid/widget/ImageView;

.field private h:Laww;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lawn;

    invoke-direct {v0, p1}, Lawn;-><init>(Landroid/content/Context;)V

    new-instance v1, Lafv;

    invoke-direct {v1}, Lafv;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Laeu;-><init>(Landroid/content/Context;Lawn;Lafv;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lawn;Lafv;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Laey;-><init>()V

    .line 156
    new-instance v0, Laeu$1;

    invoke-direct {v0, p0}, Laeu$1;-><init>(Laeu;)V

    iput-object v0, p0, Laeu;->h:Laww;

    .line 56
    iput-object p1, p0, Laeu;->b:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Laeu;->c:Lawn;

    .line 58
    iput-object p3, p0, Laeu;->d:Lafv;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Laeb;Ljava/util/List;)Laji;
    .locals 5
    .param p3    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Laeb;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Laji;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-static {v0, p3}, Laws;->a(Landroid/view/View;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {p2, v4, v4, v0, v2}, Lafv;->a(Laeb;IIII)V

    .line 135
    new-instance v0, Lakh$a;

    invoke-direct {v0}, Lakh$a;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lakh$a;->mShouldHideSystemUi:Z

    invoke-virtual {v0}, Lakh$a;->a()Lakh;

    move-result-object v2

    .line 139
    new-instance v0, Lakf$a;

    invoke-direct {v0}, Lakf$a;-><init>()V

    sget-object v3, Lcom/snapchat/android/model/Mediabryo$SnapType;->DISCOVER:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lakf$a;

    iput-boolean v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mShouldEnableVisualFilters:Z

    check-cast v0, Lakf$a;

    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mRawImageBitmap:Landroid/graphics/Bitmap;

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mWidth:I

    check-cast v0, Lakf$a;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mHeight:I

    check-cast v0, Lakf$a;

    iput-object p2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mMediaExtras:Lajv;

    check-cast v0, Lakf$a;

    iput-object v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mPreviewConfiguration:Lakh;

    check-cast v0, Lakf$a;

    invoke-virtual {v0}, Lakf$a;->c()Lakf;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;->COMPLETED:Lcom/snapchat/android/discover/analytics/DiscoverUsageAnalytics$ViewStatus;

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x1

    .line 63
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Laeu;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laeu;->e:Landroid/widget/FrameLayout;

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    iget-object v1, p0, Laeu;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v1, Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v2, p0, Laeu;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    .line 70
    new-instance v1, Lcom/snapchat/android/ui/FitWidthImageView;

    iget-object v2, p0, Laeu;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/ui/FitWidthImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Laeu;->g:Landroid/widget/ImageView;

    .line 72
    sget-object v1, Laeu$2;->a:[I

    iget-object v2, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 81
    iget-object v1, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v1, v5}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 84
    :goto_0
    iget-object v1, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    iget-object v2, p0, Laeu;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->addView(Landroid/view/View;)V

    .line 85
    iget-object v1, p0, Laeu;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Lawv$a;

    invoke-direct {v2}, Lawv$a;-><init>()V

    iget-object v3, p0, Laeu;->g:Landroid/widget/ImageView;

    iput-object v3, v2, Lawv$a;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lawv$a;->a(Ljava/lang/String;)Lawv$a;

    move-result-object v1

    iput-boolean v5, v1, Lawv$a;->mRequireExactDimensions:Z

    invoke-virtual {v1}, Lawv$a;->a()Lawv;

    move-result-object v1

    .line 94
    iget-object v2, p0, Laeu;->c:Lawn;

    new-array v3, v5, [Laww;

    iget-object v4, p0, Laeu;->h:Laww;

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lawn;->a(Lawv;[Laww;)V

    .line 95
    iget-object v1, p0, Laeu;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return v5

    .line 74
    :pswitch_0
    iget-object v1, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Laeu;->f:Lcom/snapchat/android/ui/FitWidthViewGroup;

    invoke-virtual {v1, v6}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Laeu;->c:Lawn;

    iget-object v1, p0, Laeu;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lawn;->a(Landroid/widget/ImageView;)V

    .line 154
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Laeu;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->IMAGE:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public final m_()V
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Laeu;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laeu;->j:Lafq;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Laeu;->j:Lafq;

    invoke-interface {v0}, Lafq;->b()V

    .line 123
    :cond_0
    return-void
.end method
