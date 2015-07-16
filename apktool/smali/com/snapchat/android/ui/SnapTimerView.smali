.class public Lcom/snapchat/android/ui/SnapTimerView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Z

.field private e:Z

.field private f:J

.field private g:J

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:J

    .line 38
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 39
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    .line 40
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 41
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:Z

    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->a()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:J

    .line 38
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 39
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    .line 40
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 41
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:Z

    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->a()V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:J

    .line 38
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->b:J

    .line 39
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    .line 40
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 41
    iput-wide v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:J

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:Z

    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->a()V

    .line 66
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setTextColor(I)V

    .line 70
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setTextSize(IF)V

    .line 71
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapTimerView;->setGravity(I)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->k:Landroid/graphics/Paint;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    .line 79
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 148
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 150
    :goto_0
    if-ge v1, v0, :cond_2

    .line 153
    :goto_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    .line 154
    :goto_2
    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lawf;->a(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 156
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SnapTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_1
    const/16 v1, 0xc

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5

    .prologue
    .line 85
    sub-long v0, p3, p1

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 87
    iput-wide p3, p0, Lcom/snapchat/android/ui/SnapTimerView;->a:J

    .line 88
    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    .line 89
    add-long v0, v2, p1

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:Z

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->invalidate()V

    .line 92
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/high16 v12, -0x3d4c0000    # -90.0f

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->d:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:J

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getWidth()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getHeight()I

    move-result v5

    .line 174
    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v5, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    if-eqz v0, :cond_8

    const v0, 0x7f02028b

    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v1, v5}, Laue;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v5, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    if-eqz v0, :cond_9

    const v0, 0x7f02028a

    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapTimerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0, v1, v5}, Laue;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->k:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/BitmapShader;

    iget-object v7, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 183
    :cond_6
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 184
    int-to-double v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 187
    div-int/lit8 v6, v5, 0x2

    sub-int v6, v0, v6

    .line 188
    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v0, v7

    .line 189
    iget-object v7, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    rsub-int/lit8 v8, v0, 0x0

    int-to-float v8, v8

    rsub-int/lit8 v9, v6, 0x0

    int-to-float v9, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-int v1, v5, v6

    int-to-float v1, v1

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 193
    iget-wide v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->g:J

    iget-wide v6, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    sub-long/2addr v0, v6

    .line 194
    iget-wide v6, p0, Lcom/snapchat/android/ui/SnapTimerView;->c:J

    iget-wide v8, p0, Lcom/snapchat/android/ui/SnapTimerView;->f:J

    sub-long/2addr v6, v8

    .line 195
    cmp-long v5, v0, v2

    if-gez v5, :cond_a

    move-wide v0, v2

    .line 203
    :goto_2
    const-wide/16 v2, 0x168

    mul-long/2addr v0, v2

    long-to-float v0, v0

    long-to-float v1, v6

    div-float v6, v0, v1

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    add-float v2, v12, v6

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float v3, v0, v6

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 208
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 211
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 212
    return-void

    .line 175
    :cond_8
    const v0, 0x7f020289

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f020288

    goto/16 :goto_1

    .line 197
    :cond_a
    cmp-long v2, v0, v6

    if-lez v2, :cond_b

    move-wide v0, v6

    .line 198
    goto :goto_2

    .line 201
    :cond_b
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v8, p0, Lcom/snapchat/android/ui/SnapTimerView;->l:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {p0, v2, v3, v5, v8}, Lcom/snapchat/android/ui/SnapTimerView;->invalidate(IIII)V

    goto :goto_2
.end method

.method public setIsStory(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    if-ne v0, p1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapTimerView;->e:Z

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iput-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->h:Landroid/graphics/Bitmap;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    iput-object v1, p0, Lcom/snapchat/android/ui/SnapTimerView;->j:Landroid/graphics/Bitmap;

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->b()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0}, Lcom/snapchat/android/ui/SnapTimerView;->b()V

    .line 128
    return-void
.end method
