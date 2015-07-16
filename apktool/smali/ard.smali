.class public final Lard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lard$a;,
        Lard$c;,
        Lard$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static A:Ljava/lang/reflect/Method;

.field private static B:Ljava/lang/reflect/Method;

.field private static C:Ljava/lang/reflect/Method;

.field private static D:Ljava/lang/reflect/Method;

.field private static E:I

.field private static F:I

.field private static final G:[F

.field private static final H:[F

.field private static final I:[F

.field private static final J:[I

.field public static final b:Z

.field private static w:Ljava/lang/reflect/Method;

.field private static x:Ljava/lang/reflect/Method;

.field private static y:Ljava/lang/reflect/Method;

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field a:Lard$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lard$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lard$b;

.field private d:Lard$b;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private m:Lard$c;

.field private n:J

.field private o:J

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    const/4 v2, 0x6

    sput v2, Lard;->E:I

    .line 213
    const/16 v2, 0x8

    sput v2, Lard;->F:I

    .line 219
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->w:Ljava/lang/reflect/Method;

    .line 220
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->x:Ljava/lang/reflect/Method;

    .line 221
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->y:Ljava/lang/reflect/Method;

    .line 222
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->z:Ljava/lang/reflect/Method;

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->A:Ljava/lang/reflect/Method;

    .line 224
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->B:Ljava/lang/reflect/Method;

    .line 225
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->C:Ljava/lang/reflect/Method;

    .line 226
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lard;->D:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    sput-boolean v0, Lard;->b:Z

    if-eqz v0, :cond_0

    .line 236
    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lard;->E:I

    .line 237
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lard;->F:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_0
    :goto_1
    new-array v0, v7, [F

    sput-object v0, Lard;->G:[F

    .line 246
    new-array v0, v7, [F

    sput-object v0, Lard;->H:[F

    .line 247
    new-array v0, v7, [F

    sput-object v0, Lard;->I:[F

    .line 248
    new-array v0, v7, [I

    sput-object v0, Lard;->J:[I

    return-void

    .line 228
    :catch_0
    move-exception v2

    .line 229
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Lard$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lard$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lard;-><init>(Lard$a;B)V

    .line 175
    return-void
.end method

.method private constructor <init>(Lard$a;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lard$a",
            "<TT;>;B)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lard;->l:Ljava/lang/Object;

    .line 142
    new-instance v0, Lard$c;

    invoke-direct {v0}, Lard$c;-><init>()V

    iput-object v0, p0, Lard;->m:Lard$c;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lard;->v:I

    .line 179
    new-instance v0, Lard$b;

    invoke-direct {v0}, Lard$b;-><init>()V

    iput-object v0, p0, Lard;->c:Lard$b;

    .line 180
    new-instance v0, Lard$b;

    invoke-direct {v0}, Lard$b;-><init>()V

    iput-object v0, p0, Lard;->d:Lard$b;

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lard;->k:Z

    .line 182
    iput-object p1, p0, Lard;->a:Lard$a;

    .line 183
    return-void
.end method

.method private a()V
    .locals 12

    .prologue
    const/high16 v11, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lard;->c:Lard$b;

    iget v0, v0, Lard$b;->f:F

    iput v0, p0, Lard;->e:F

    .line 126
    iget-object v0, p0, Lard;->c:Lard$b;

    iget v0, v0, Lard$b;->g:F

    iput v0, p0, Lard;->f:F

    .line 127
    const v7, 0x41aa6666    # 21.3f

    iget-object v0, p0, Lard;->m:Lard$c;

    iget-boolean v0, v0, Lard$c;->g:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lard;->g:F

    .line 128
    iget-object v0, p0, Lard;->m:Lard$c;

    iget-boolean v0, v0, Lard$c;->h:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lard;->h:F

    .line 129
    iget-object v0, p0, Lard;->m:Lard$c;

    iget-boolean v0, v0, Lard$c;->h:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lard;->i:F

    .line 130
    iget-object v0, p0, Lard;->m:Lard$c;

    iget-boolean v0, v0, Lard$c;->i:Z

    if-nez v0, :cond_b

    :goto_3
    iput v1, p0, Lard;->j:F

    .line 131
    return-void

    .line 127
    :cond_0
    iget-object v8, p0, Lard;->c:Lard$b;

    iget-boolean v0, v8, Lard$b;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, v8, Lard$b;->o:Z

    if-nez v0, :cond_3

    iput v1, v8, Lard$b;->k:F

    :cond_1
    :goto_4
    iput-boolean v10, v8, Lard$b;->q:Z

    :cond_2
    iget v0, v8, Lard$b;->k:F

    goto :goto_0

    :cond_3
    iget-boolean v0, v8, Lard$b;->p:Z

    if-nez v0, :cond_4

    iget-boolean v0, v8, Lard$b;->o:Z

    if-eqz v0, :cond_6

    iget v0, v8, Lard$b;->i:F

    iget v2, v8, Lard$b;->i:F

    mul-float/2addr v0, v2

    iget v2, v8, Lard$b;->j:F

    iget v3, v8, Lard$b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    :goto_5
    iput v0, v8, Lard$b;->l:F

    iput-boolean v10, v8, Lard$b;->p:Z

    :cond_4
    iget v0, v8, Lard$b;->l:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    move v0, v1

    :goto_6
    iput v0, v8, Lard$b;->k:F

    iget v0, v8, Lard$b;->k:F

    iget v2, v8, Lard$b;->i:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget v0, v8, Lard$b;->i:F

    iput v0, v8, Lard$b;->k:F

    :cond_5
    iget v0, v8, Lard$b;->k:F

    iget v2, v8, Lard$b;->j:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, v8, Lard$b;->j:F

    iput v0, v8, Lard$b;->k:F

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    const/high16 v2, 0x43800000    # 256.0f

    mul-float/2addr v0, v2

    float-to-int v3, v0

    const v2, 0x8000

    const/16 v0, 0xf

    move v5, v2

    move v2, v3

    move v3, v0

    move v0, v6

    :goto_7
    shl-int/lit8 v4, v0, 0x1

    add-int v9, v4, v5

    add-int/lit8 v4, v3, -0x1

    shl-int v3, v9, v3

    if-lt v2, v3, :cond_8

    add-int/2addr v0, v5

    sub-int/2addr v2, v3

    :cond_8
    shr-int/lit8 v3, v5, 0x1

    if-gtz v3, :cond_e

    int-to-float v0, v0

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v0, v2

    goto :goto_6

    .line 128
    :cond_9
    iget-object v0, p0, Lard;->c:Lard$b;

    invoke-virtual {v0}, Lard$b;->a()F

    move-result v0

    goto/16 :goto_1

    .line 129
    :cond_a
    iget-object v0, p0, Lard;->c:Lard$b;

    invoke-virtual {v0}, Lard$b;->b()F

    move-result v0

    goto/16 :goto_2

    .line 130
    :cond_b
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v2, v0, Lard$b;->r:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lard$b;->o:Z

    if-nez v2, :cond_d

    iput v1, v0, Lard$b;->m:F

    :goto_8
    iput-boolean v10, v0, Lard$b;->r:Z

    :cond_c
    iget v1, v0, Lard$b;->m:F

    goto/16 :goto_3

    :cond_d
    iget-object v1, v0, Lard$b;->c:[F

    aget v1, v1, v10

    iget-object v2, v0, Lard$b;->c:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, v0, Lard$b;->b:[F

    aget v1, v1, v10

    iget-object v4, v0, Lard$b;->b:[F

    aget v4, v4, v6

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lard$b;->m:F

    goto :goto_8

    :cond_e
    move v5, v3

    move v3, v4

    goto :goto_7
.end method

.method private b()V
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lard;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lard;->a:Lard$a;

    iget-object v1, p0, Lard;->l:Ljava/lang/Object;

    iget-object v2, p0, Lard;->m:Lard$c;

    invoke-interface {v0, v1, v2}, Lard$a;->b(Ljava/lang/Object;Lard$c;)V

    .line 344
    invoke-direct {p0}, Lard;->a()V

    .line 345
    iget v0, p0, Lard;->e:F

    iget-object v1, p0, Lard;->m:Lard$c;

    iget v1, v1, Lard$c;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lard;->p:F

    .line 346
    iget v0, p0, Lard;->f:F

    iget-object v1, p0, Lard;->m:Lard$c;

    iget v1, v1, Lard$c;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lard;->q:F

    .line 347
    iget-object v0, p0, Lard;->m:Lard$c;

    iget v0, v0, Lard$c;->c:F

    iget v1, p0, Lard;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lard;->r:F

    .line 348
    iget-object v0, p0, Lard;->m:Lard$c;

    iget v0, v0, Lard$c;->d:F

    iget v1, p0, Lard;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Lard;->t:F

    .line 349
    iget-object v0, p0, Lard;->m:Lard$c;

    iget v0, v0, Lard$c;->e:F

    iget v1, p0, Lard;->i:F

    div-float/2addr v0, v1

    iput v0, p0, Lard;->u:F

    .line 350
    iget-object v0, p0, Lard;->m:Lard$c;

    iget v0, v0, Lard$c;->f:F

    iget v1, p0, Lard;->j:F

    sub-float/2addr v0, v1

    iput v0, p0, Lard;->s:F

    goto :goto_0
.end method

.method private c()V
    .locals 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 356
    iget-object v0, p0, Lard;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-direct {p0}, Lard;->a()V

    .line 361
    iget v0, p0, Lard;->e:F

    iget v2, p0, Lard;->p:F

    sub-float v4, v0, v2

    .line 362
    iget v0, p0, Lard;->f:F

    iget v2, p0, Lard;->q:F

    sub-float v5, v0, v2

    .line 363
    iget v0, p0, Lard;->r:F

    iget v2, p0, Lard;->g:F

    mul-float/2addr v0, v2

    .line 364
    iget v2, p0, Lard;->t:F

    iget v3, p0, Lard;->h:F

    mul-float/2addr v2, v3

    .line 365
    iget v3, p0, Lard;->u:F

    iget v6, p0, Lard;->i:F

    mul-float/2addr v3, v6

    .line 366
    iget v6, p0, Lard;->s:F

    iget v7, p0, Lard;->j:F

    add-float/2addr v6, v7

    .line 369
    iget-object v7, p0, Lard;->m:Lard$c;

    iput v4, v7, Lard$c;->a:F

    iput v5, v7, Lard$c;->b:F

    cmpl-float v4, v0, v8

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    iput v0, v7, Lard$c;->c:F

    cmpl-float v0, v2, v8

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, v7, Lard$c;->d:F

    cmpl-float v0, v3, v8

    if-nez v0, :cond_3

    :goto_2
    iput v1, v7, Lard$c;->e:F

    iput v6, v7, Lard$c;->f:F

    .line 371
    iget-object v0, p0, Lard;->a:Lard$a;

    iget-object v1, p0, Lard;->l:Ljava/lang/Object;

    iget-object v2, p0, Lard;->m:Lard$c;

    invoke-interface {v0, v1, v2}, Lard$a;->a(Ljava/lang/Object;Lard$c;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 369
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 254
    :try_start_0
    sget-boolean v0, Lard;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lard;->w:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    .line 257
    :goto_0
    iget v0, p0, Lard;->v:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lard;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 259
    const/4 v0, 0x0

    .line 309
    :goto_1
    return v0

    .line 254
    :cond_0
    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v8, v0, v7

    .line 266
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-gt v6, v8, :cond_1d

    .line 268
    if-ge v6, v8, :cond_5

    const/4 v0, 0x1

    move v5, v0

    .line 269
    :goto_3
    sget-boolean v0, Lard;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 275
    :cond_2
    sget-object v1, Lard;->G:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    :goto_4
    aput v0, v1, v2

    .line 276
    sget-object v1, Lard;->H:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_5
    aput v0, v1, v2

    .line 277
    sget-object v1, Lard;->I:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_6
    aput v0, v1, v2

    .line 298
    :cond_3
    sget-object v9, Lard;->G:[F

    sget-object v10, Lard;->H:[F

    sget-object v11, Lard;->I:[F

    sget-object v12, Lard;->J:[I

    if-eqz v5, :cond_d

    const/4 v0, 0x2

    move v3, v0

    :goto_7
    if-nez v5, :cond_4

    const/4 v0, 0x1

    if-eq v4, v0, :cond_e

    const/4 v0, 0x1

    sget v1, Lard;->F:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    sget v1, Lard;->E:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x3

    if-eq v4, v0, :cond_e

    :cond_4
    const/4 v0, 0x1

    move v2, v0

    :goto_8
    if-eqz v5, :cond_f

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    :goto_9
    iget-object v5, p0, Lard;->d:Lard$b;

    iget-object v13, p0, Lard;->c:Lard$b;

    iput-object v13, p0, Lard;->d:Lard$b;

    iput-object v5, p0, Lard;->c:Lard$b;

    iget-object v5, p0, Lard;->c:Lard$b;

    iput-wide v0, v5, Lard$b;->t:J

    iput v3, v5, Lard$b;->s:I

    iput v7, v5, Lard$b;->a:I

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v7, :cond_10

    iget-object v1, v5, Lard$b;->b:[F

    aget v3, v9, v0

    aput v3, v1, v0

    iget-object v1, v5, Lard$b;->c:[F

    aget v3, v10, v0

    aput v3, v1, v0

    iget-object v1, v5, Lard$b;->d:[F

    aget v3, v11, v0

    aput v3, v1, v0

    iget-object v1, v5, Lard$b;->e:[I

    aget v3, v12, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 268
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .line 275
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_4

    .line 276
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_5

    .line 277
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_6

    .line 282
    :cond_9
    const/16 v0, 0x14

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 285
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_3

    .line 286
    sget-object v0, Lard;->x:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    sget-object v3, Lard;->J:[I

    aput v0, v3, v1

    .line 291
    sget-object v3, Lard;->G:[F

    if-eqz v5, :cond_a

    sget-object v0, Lard;->z:Ljava/lang/reflect/Method;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 292
    sget-object v3, Lard;->H:[F

    if-eqz v5, :cond_b

    sget-object v0, Lard;->A:Ljava/lang/reflect/Method;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 293
    sget-object v3, Lard;->I:[F

    if-eqz v5, :cond_c

    sget-object v0, Lard;->B:Ljava/lang/reflect/Method;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_e
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v3, v1

    .line 285
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    .line 291
    :cond_a
    sget-object v0, Lard;->C:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 292
    :cond_b
    sget-object v0, Lard;->D:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 293
    :cond_c
    sget-object v0, Lard;->y:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_d
    move v3, v4

    .line 298
    goto/16 :goto_7

    :cond_e
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto/16 :goto_9

    :cond_10
    iput-boolean v2, v5, Lard$b;->n:Z

    const/4 v0, 0x2

    if-lt v7, v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, v5, Lard$b;->o:Z

    iget-boolean v0, v5, Lard$b;->o:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Lard$b;->f:F

    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Lard$b;->g:F

    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Lard$b;->h:F

    const/4 v0, 0x1

    aget v0, v9, v0

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v5, Lard$b;->i:F

    const/4 v0, 0x1

    aget v0, v10, v0

    const/4 v1, 0x0

    aget v1, v10, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v5, Lard$b;->j:F

    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, v5, Lard$b;->r:Z

    iput-boolean v0, v5, Lard$b;->q:Z

    iput-boolean v0, v5, Lard$b;->p:Z

    iget v0, p0, Lard;->v:I

    packed-switch v0, :pswitch_data_0

    .line 266
    :cond_11
    :goto_11
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_2

    .line 298
    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, v5, Lard$b;->f:F

    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, v5, Lard$b;->g:F

    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, v5, Lard$b;->h:F

    const/4 v0, 0x0

    iput v0, v5, Lard$b;->j:F

    iput v0, v5, Lard$b;->i:F

    goto :goto_10

    .line 309
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 298
    :pswitch_0
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->n:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lard;->a:Lard$a;

    invoke-interface {v0}, Lard$a;->getDraggableObjectAtPoint$73035ef()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lard;->l:Ljava/lang/Object;

    iget-object v0, p0, Lard;->l:Ljava/lang/Object;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lard;->v:I

    invoke-direct {p0}, Lard;->b()V

    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iput-wide v0, p0, Lard;->o:J

    iput-wide v0, p0, Lard;->n:J

    goto :goto_11

    :pswitch_1
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->n:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Lard;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lard;->l:Ljava/lang/Object;

    goto :goto_11

    :cond_14
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->o:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    iput v0, p0, Lard;->v:I

    invoke-direct {p0}, Lard;->b()V

    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iput-wide v0, p0, Lard;->n:J

    iget-wide v0, p0, Lard;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lard;->o:J

    goto :goto_11

    :cond_15
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iget-wide v2, p0, Lard;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    invoke-direct {p0}, Lard;->b()V

    goto :goto_11

    :cond_16
    invoke-direct {p0}, Lard;->c()V

    goto :goto_11

    :pswitch_2
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->o:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->n:Z

    if-nez v0, :cond_19

    :cond_17
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-boolean v0, v0, Lard$b;->n:Z

    if-nez v0, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Lard;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lard;->l:Ljava/lang/Object;

    goto/16 :goto_11

    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Lard;->v:I

    invoke-direct {p0}, Lard;->b()V

    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iput-wide v0, p0, Lard;->n:J

    iget-wide v0, p0, Lard;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lard;->o:J

    goto/16 :goto_11

    :cond_19
    iget-object v0, p0, Lard;->c:Lard$b;

    iget v0, v0, Lard$b;->f:F

    iget-object v1, p0, Lard;->d:Lard$b;

    iget v1, v1, Lard$b;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lard;->c:Lard$b;

    iget v0, v0, Lard$b;->g:F

    iget-object v1, p0, Lard;->d:Lard$b;

    iget v1, v1, Lard$b;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lard;->c:Lard$b;

    invoke-virtual {v0}, Lard$b;->a()F

    move-result v0

    iget-object v1, p0, Lard;->d:Lard$b;

    invoke-virtual {v1}, Lard$b;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lard;->c:Lard$b;

    invoke-virtual {v0}, Lard$b;->b()F

    move-result v0

    iget-object v1, p0, Lard;->d:Lard$b;

    invoke-virtual {v1}, Lard$b;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    :cond_1a
    invoke-direct {p0}, Lard;->b()V

    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iput-wide v0, p0, Lard;->n:J

    iget-wide v0, p0, Lard;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lard;->o:J

    goto/16 :goto_11

    :cond_1b
    iget-object v0, p0, Lard;->c:Lard$b;

    iget-wide v0, v0, Lard$b;->t:J

    iget-wide v2, p0, Lard;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    invoke-direct {p0}, Lard;->b()V

    goto/16 :goto_11

    :cond_1c
    invoke-direct {p0}, Lard;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    .line 306
    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
