.class public Lcom/snapchat/android/ui/CustomVolumeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/CustomVolumeView$3;,
        Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

.field private f:Landroid/media/AudioManager;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/Runnable;

.field private i:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 43
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 48
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    .line 34
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 53
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->a(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/CustomVolumeView;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->i:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 102
    sget-object v0, Lcom/snapchat/android/ui/CustomVolumeView$3;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    iput v5, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    iput v3, p0, Lcom/snapchat/android/ui/CustomVolumeView;->c:I

    iput v4, p0, Lcom/snapchat/android/ui/CustomVolumeView;->d:I

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-static {v0}, Lawf;->e(Landroid/content/Context;)Z

    move-result v3

    .line 105
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-static {v0}, Lawf;->a(Landroid/content/Context;)I

    move-result v0

    move v2, v0

    .line 106
    :goto_1
    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-static {v0}, Lawf;->b(Landroid/content/Context;)I

    move-result v0

    .line 108
    :goto_2
    int-to-double v4, v0

    const-wide v6, 0x3f8205bc01a36e2fL    # 0.0088

    mul-double/2addr v4, v6

    double-to-int v5, v4

    .line 109
    int-to-double v2, v2

    const-wide v6, 0x3f707746887a8d65L    # 0.00402

    mul-double/2addr v2, v6

    double-to-int v3, v2

    move v0, v1

    .line 113
    :goto_3
    iget v2, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    if-ge v0, v2, :cond_4

    .line 114
    new-instance v6, Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-direct {v6, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    if-nez v0, :cond_2

    move v2, v1

    :goto_4
    iget v4, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    move v4, v1

    :goto_5
    invoke-virtual {v7, v2, v1, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v2, -0x1

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    iget-object v2, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/CustomVolumeView;->addView(Landroid/view/View;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 102
    :pswitch_0
    iput v5, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    iput v3, p0, Lcom/snapchat/android/ui/CustomVolumeView;->c:I

    iput v4, p0, Lcom/snapchat/android/ui/CustomVolumeView;->d:I

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->c:I

    iput v1, p0, Lcom/snapchat/android/ui/CustomVolumeView;->d:I

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-static {v0}, Lawf;->b(Landroid/content/Context;)I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    invoke-static {v0}, Lawf;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_2

    :cond_2
    move v2, v3

    .line 117
    goto :goto_4

    :cond_3
    move v4, v3

    goto :goto_5

    .line 123
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/ui/CustomVolumeView;->b()V

    .line 124
    return-void

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 4

    .prologue
    .line 68
    iput-object p2, p0, Lcom/snapchat/android/ui/CustomVolumeView;->f:Landroid/media/AudioManager;

    .line 69
    iput-object p1, p0, Lcom/snapchat/android/ui/CustomVolumeView;->g:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/snapchat/android/ui/CustomVolumeView;->a()V

    .line 71
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->i:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->i:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->i:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/snapchat/android/ui/CustomVolumeView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/CustomVolumeView$1;-><init>(Lcom/snapchat/android/ui/CustomVolumeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/snapchat/android/ui/CustomVolumeView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/CustomVolumeView$2;-><init>(Lcom/snapchat/android/ui/CustomVolumeView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->h:Ljava/lang/Runnable;

    .line 72
    return-void

    .line 71
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->f:Landroid/media/AudioManager;

    iget v1, p0, Lcom/snapchat/android/ui/CustomVolumeView;->d:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    move v1, v2

    .line 177
    :goto_0
    iget v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->b:I

    if-ge v1, v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 180
    if-nez v3, :cond_1

    .line 181
    iget-object v4, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    sget-object v5, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->HERE:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 177
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_1
    iget v4, p0, Lcom/snapchat/android/ui/CustomVolumeView;->c:I

    mul-int/2addr v4, v1

    .line 200
    if-le v3, v4, :cond_2

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 203
    :cond_2
    if-ne v3, v4, :cond_3

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_4
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->f:Landroid/media/AudioManager;

    iget v1, p0, Lcom/snapchat/android/ui/CustomVolumeView;->d:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 167
    invoke-direct {p0}, Lcom/snapchat/android/ui/CustomVolumeView;->b()V

    .line 170
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/CustomVolumeView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/CustomVolumeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;)V
    .locals 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/snapchat/android/ui/CustomVolumeView;->e:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/CustomVolumeView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/CustomVolumeView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/snapchat/android/ui/CustomVolumeView;->a()V

    .line 59
    return-void
.end method
