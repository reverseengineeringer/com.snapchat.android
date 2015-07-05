.class public Lcom/snapchat/android/ui/ChatCameraButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ChatCameraButton$a;
    }
.end annotation


# instance fields
.field public a:Landroid/media/MediaPlayer;
    .annotation build Lcgc;
    .end annotation
.end field

.field private b:Lcom/snapchat/android/ui/ChatCameraButton$a;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/drawable/Drawable;

.field private final l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/Paint;
    .annotation build Lcgb;
    .end annotation
.end field

.field private final n:F

.field private final o:Landroid/graphics/RectF;

.field private final p:Landroid/graphics/RectF;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->c:Landroid/os/Handler;

    .line 89
    const v0, 0x7f080027

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->d:Landroid/graphics/Paint;

    .line 90
    const v0, 0x7f080007

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    .line 91
    const v0, 0x7f080032

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    .line 92
    const v0, 0x7f080053

    invoke-static {p1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/content/Context;I)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->j:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/Paint;

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0, p1}, Lavh;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:F

    .line 117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Landroid/graphics/RectF;

    .line 120
    iput-boolean v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->u:Z

    .line 121
    iput-boolean v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->v:Z

    .line 122
    iput-boolean v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->w:Z

    .line 123
    iput-boolean v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->x:Z

    .line 125
    new-instance v0, Lcom/snapchat/android/ui/ChatCameraButton$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/ChatCameraButton$1;-><init>(Lcom/snapchat/android/ui/ChatCameraButton;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->y:Ljava/lang/Runnable;

    .line 139
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S7500"

    invoke-static {v0, v1}, Laui;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f060007

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Lcom/snapchat/android/ui/ChatCameraButton$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton$2;-><init>(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/content/Context;)V

    const-string v1, "HerePresenceButton Load Sound Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ChatCameraButton;J)J
    .locals 1

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:J

    return-wide p1
.end method

.method private static a(Landroid/content/Context;I)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 145
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 146
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    return-object v1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ChatCameraButton;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->w:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->w:Z

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->v:Z

    .line 329
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ChatCameraButton;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->w:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/ChatCameraButton;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/ChatCameraButton;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->a()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/ui/ChatCameraButton;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->v:Z

    return v0
.end method


# virtual methods
.method public getCashSwipeDetected()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:Z

    return v0
.end method

.method public getCashtagDetected()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    return v0
.end method

.method public getIsEmoji()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->u:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/16 v1, 0xff

    const/high16 v11, 0x44480000    # 800.0f

    const/4 v0, 0x0

    const-wide/16 v6, 0xc8

    .line 245
    iget-boolean v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->u:Z

    if-eqz v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 247
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    iget v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:F

    iget v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:F

    iget-object v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:J

    sub-long/2addr v2, v4

    .line 261
    iget-boolean v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:Z

    if-eqz v4, :cond_3

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->j:Landroid/graphics/Paint;

    cmp-long v1, v2, v6

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-float v1, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 263
    :goto_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    .line 272
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    iget v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:F

    iget v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->n:F

    iget-object v3, p0, Lcom/snapchat/android/ui/ChatCameraButton;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/Paint;

    goto :goto_1

    .line 264
    :cond_3
    iget-boolean v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    if-eqz v4, :cond_8

    .line 265
    iget-object v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->e:Landroid/graphics/Paint;

    cmp-long v5, v2, v6

    if-gez v5, :cond_4

    iget-boolean v5, p0, Lcom/snapchat/android/ui/ChatCameraButton;->v:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    long-to-float v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 266
    :goto_3
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 265
    :cond_4
    iget-object v5, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x640

    cmp-long v5, v2, v6

    if-gez v5, :cond_5

    iget-boolean v5, p0, Lcom/snapchat/android/ui/ChatCameraButton;->x:Z

    if-eqz v5, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->a()V

    :goto_4
    iput-object v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/Paint;

    goto :goto_3

    :cond_6
    const-wide/16 v6, 0x320

    rem-long/2addr v2, v6

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e0f5c28    # 0.13999999f

    mul-float/2addr v7, v8

    long-to-float v8, v2

    div-float/2addr v8, v11

    invoke-static {v6, v7, v8}, Lats;->a(FFF)F

    move-result v6

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f5c28f6    # 0.86f

    mul-float/2addr v8, v9

    long-to-float v9, v2

    div-float/2addr v9, v11

    invoke-static {v7, v8, v9}, Lats;->a(FFF)F

    move-result v7

    iget-object v8, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v9, v5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v5, v10

    invoke-virtual {v8, v6, v9, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, 0x437f0000    # 255.0f

    long-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v11

    float-to-int v2, v2

    rsub-int v2, v2, 0xff

    if-gez v2, :cond_7

    :goto_5
    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->p:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_4

    :cond_7
    if-le v2, v1, :cond_a

    move v0, v1

    goto :goto_5

    .line 268
    :cond_8
    iget-object v1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->m:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/snapchat/android/ui/ChatCameraButton;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/snapchat/android/ui/ChatCameraButton;->y:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->w:Z

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->v:Z

    cmp-long v0, v2, v6

    if-gez v0, :cond_9

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v0

    int-to-long v4, v0

    sub-long v2, v6, v2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-float v0, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 269
    :cond_9
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ChatCameraButton;->a(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto :goto_5
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->o:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 241
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 234
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Lcom/snapchat/android/ui/ChatCameraButton$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Lcom/snapchat/android/ui/ChatCameraButton$a;

    invoke-interface {v0, p1}, Lcom/snapchat/android/ui/ChatCameraButton$a;->a(Landroid/view/MotionEvent;)V

    .line 235
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCashSwipeDetected(Z)V
    .locals 2

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:Z

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:J

    .line 187
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:Z

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_0
.end method

.method public setCashtagDetected(Z)V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    if-ne p1, v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:J

    .line 180
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    .line 181
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    goto :goto_0
.end method

.method public setIsEmoji(Z)V
    .locals 0

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->u:Z

    .line 222
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 223
    return-void
.end method

.method public setIsTyping(Z)V
    .locals 0

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->x:Z

    .line 321
    return-void
.end method

.method public setPresent(Z)V
    .locals 4

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    if-ne p1, v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->s:Z

    .line 202
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->r:Z

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->t:J

    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ChatCameraButton;->invalidate()V

    .line 207
    if-eqz p1, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ChatCameraButton;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "ChatCameraButton"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to play sound effect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setTouchSubscriber(Lcom/snapchat/android/ui/ChatCameraButton$a;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/snapchat/android/ui/ChatCameraButton;->b:Lcom/snapchat/android/ui/ChatCameraButton$a;

    .line 227
    return-void
.end method
