.class public Lcom/snapchat/android/ui/FrivolousAnimationView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/graphics/RectF;

.field c:J

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Paint;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/FrivolousAnimationView;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->d:I

    .line 47
    iput v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->g:I

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->i:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->i:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->c:J

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->a:Landroid/graphics/RectF;

    .line 65
    return-void
.end method

.method private static a(ILandroid/graphics/Canvas;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 198
    :cond_1
    :goto_0
    return-object v0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    sget-object v0, Lcom/snapchat/android/ui/FrivolousAnimationView;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 181
    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    .line 186
    :cond_3
    :try_start_0
    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get drawable! Bad resource perchance?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    .line 191
    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/snapchat/android/ui/FrivolousAnimationView;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->c:J

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FrivolousAnimationView;->invalidate()V

    .line 92
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/high16 v7, 0x43b40000    # 360.0f

    .line 104
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->g:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->d:I

    if-nez v2, :cond_2

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 113
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 114
    :cond_3
    iget v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->g:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FrivolousAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/snapchat/android/ui/FrivolousAnimationView;->a(ILandroid/graphics/Canvas;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    .line 115
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->i:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 121
    :cond_5
    iget v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->d:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/FrivolousAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/snapchat/android/ui/FrivolousAnimationView;->a(ILandroid/graphics/Canvas;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    .line 122
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 123
    iget-object v2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->c:J

    sub-long/2addr v2, v4

    .line 130
    cmp-long v4, v2, v0

    if-gez v4, :cond_7

    .line 138
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    .line 139
    mul-float v3, v7, v0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->a:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    cmpl-float v0, v3, v7

    if-ltz v0, :cond_b

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->a:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_7
    const-wide/16 v0, 0x1f4

    cmp-long v0, v2, v0

    if-lez v0, :cond_8

    .line 133
    const-wide/16 v0, 0x1f4

    goto :goto_1

    .line 136
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FrivolousAnimationView;->invalidate()V

    move-wide v0, v2

    goto :goto_1

    .line 148
    :cond_9
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get Frivolous animation icon bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 158
    iget-object v1, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->a:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 160
    :cond_c
    iget-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->a:Landroid/graphics/RectF;

    add-float v2, v8, v3

    sub-float v3, v7, v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized setIconResources(II)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 74
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FrivolousAnimationView;->setBackgroundResource(I)V

    .line 77
    :cond_1
    iget v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->d:I

    if-eq p1, v0, :cond_2

    .line 78
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/FrivolousAnimationView;->setImageResource(I)V

    .line 79
    iput p1, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->d:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->e:Landroid/graphics/Bitmap;

    .line 83
    :cond_2
    iget v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->g:I

    if-eq p2, v0, :cond_3

    .line 84
    iput p2, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->g:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/FrivolousAnimationView;->h:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_3
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
