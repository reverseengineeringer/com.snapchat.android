.class public final Laqe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqe$a;,
        Laqe$c;,
        Laqe$b;
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
.field a:Laqe$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqe$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Laqe$b;

.field private d:Laqe$b;

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

.field private m:Laqe$c;

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

    .line 210
    const/4 v2, 0x6

    sput v2, Laqe;->E:I

    .line 211
    const/16 v2, 0x8

    sput v2, Laqe;->F:I

    .line 217
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Laqe;->w:Ljava/lang/reflect/Method;

    .line 218
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Laqe;->x:Ljava/lang/reflect/Method;

    .line 219
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Laqe;->y:Ljava/lang/reflect/Method;

    .line 220
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

    sput-object v2, Laqe;->z:Ljava/lang/reflect/Method;

    .line 221
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

    sput-object v2, Laqe;->A:Ljava/lang/reflect/Method;

    .line 222
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

    sput-object v2, Laqe;->B:Ljava/lang/reflect/Method;

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Laqe;->C:Ljava/lang/reflect/Method;

    .line 224
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Laqe;->D:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    sput-boolean v0, Laqe;->b:Z

    if-eqz v0, :cond_0

    .line 234
    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Laqe;->E:I

    .line 235
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Laqe;->F:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :cond_0
    :goto_1
    new-array v0, v7, [F

    sput-object v0, Laqe;->G:[F

    .line 244
    new-array v0, v7, [F

    sput-object v0, Laqe;->H:[F

    .line 245
    new-array v0, v7, [F

    sput-object v0, Laqe;->I:[F

    .line 246
    new-array v0, v7, [I

    sput-object v0, Laqe;->J:[I

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Laqe$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqe$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Laqe;-><init>(Laqe$a;B)V

    .line 173
    return-void
.end method

.method private constructor <init>(Laqe$a;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laqe$a",
            "<TT;>;B)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Laqe;->l:Ljava/lang/Object;

    .line 140
    new-instance v0, Laqe$c;

    invoke-direct {v0}, Laqe$c;-><init>()V

    iput-object v0, p0, Laqe;->m:Laqe$c;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Laqe;->v:I

    .line 177
    new-instance v0, Laqe$b;

    invoke-direct {v0}, Laqe$b;-><init>()V

    iput-object v0, p0, Laqe;->c:Laqe$b;

    .line 178
    new-instance v0, Laqe$b;

    invoke-direct {v0}, Laqe$b;-><init>()V

    iput-object v0, p0, Laqe;->d:Laqe$b;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqe;->k:Z

    .line 180
    iput-object p1, p0, Laqe;->a:Laqe$a;

    .line 181
    return-void
.end method

.method private a()V
    .locals 12

    .prologue
    const/high16 v11, 0x41f00000    # 30.0f

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget v0, v0, Laqe$b;->f:F

    iput v0, p0, Laqe;->e:F

    .line 124
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget v0, v0, Laqe$b;->g:F

    iput v0, p0, Laqe;->f:F

    .line 125
    const v7, 0x41aa6666    # 21.3f

    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget-boolean v0, v0, Laqe$c;->g:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laqe;->g:F

    .line 126
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget-boolean v0, v0, Laqe$c;->h:Z

    if-nez v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laqe;->h:F

    .line 127
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget-boolean v0, v0, Laqe$c;->h:Z

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    invoke-static {v11, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laqe;->i:F

    .line 128
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget-boolean v0, v0, Laqe$c;->i:Z

    if-nez v0, :cond_b

    :goto_3
    iput v1, p0, Laqe;->j:F

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v8, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v8, Laqe$b;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, v8, Laqe$b;->o:Z

    if-nez v0, :cond_3

    iput v1, v8, Laqe$b;->k:F

    :cond_1
    :goto_4
    iput-boolean v10, v8, Laqe$b;->q:Z

    :cond_2
    iget v0, v8, Laqe$b;->k:F

    goto :goto_0

    :cond_3
    iget-boolean v0, v8, Laqe$b;->p:Z

    if-nez v0, :cond_4

    iget-boolean v0, v8, Laqe$b;->o:Z

    if-eqz v0, :cond_6

    iget v0, v8, Laqe$b;->i:F

    iget v2, v8, Laqe$b;->i:F

    mul-float/2addr v0, v2

    iget v2, v8, Laqe$b;->j:F

    iget v3, v8, Laqe$b;->j:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    :goto_5
    iput v0, v8, Laqe$b;->l:F

    iput-boolean v10, v8, Laqe$b;->p:Z

    :cond_4
    iget v0, v8, Laqe$b;->l:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_7

    move v0, v1

    :goto_6
    iput v0, v8, Laqe$b;->k:F

    iget v0, v8, Laqe$b;->k:F

    iget v2, v8, Laqe$b;->i:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iget v0, v8, Laqe$b;->i:F

    iput v0, v8, Laqe$b;->k:F

    :cond_5
    iget v0, v8, Laqe$b;->k:F

    iget v2, v8, Laqe$b;->j:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, v8, Laqe$b;->j:F

    iput v0, v8, Laqe$b;->k:F

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

    .line 126
    :cond_9
    iget-object v0, p0, Laqe;->c:Laqe$b;

    invoke-virtual {v0}, Laqe$b;->a()F

    move-result v0

    goto/16 :goto_1

    .line 127
    :cond_a
    iget-object v0, p0, Laqe;->c:Laqe$b;

    invoke-virtual {v0}, Laqe$b;->b()F

    move-result v0

    goto/16 :goto_2

    .line 128
    :cond_b
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v2, v0, Laqe$b;->r:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Laqe$b;->o:Z

    if-nez v2, :cond_d

    iput v1, v0, Laqe$b;->m:F

    :goto_8
    iput-boolean v10, v0, Laqe$b;->r:Z

    :cond_c
    iget v1, v0, Laqe$b;->m:F

    goto/16 :goto_3

    :cond_d
    iget-object v1, v0, Laqe$b;->c:[F

    aget v1, v1, v10

    iget-object v2, v0, Laqe$b;->c:[F

    aget v2, v2, v6

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, v0, Laqe$b;->b:[F

    aget v1, v1, v10

    iget-object v4, v0, Laqe$b;->b:[F

    aget v4, v4, v6

    sub-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Laqe$b;->m:F

    goto :goto_8

    :cond_e
    move v5, v3

    move v3, v4

    goto :goto_7
.end method

.method private b()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Laqe;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Laqe;->a:Laqe$a;

    iget-object v1, p0, Laqe;->l:Ljava/lang/Object;

    iget-object v2, p0, Laqe;->m:Laqe$c;

    invoke-interface {v0, v1, v2}, Laqe$a;->b(Ljava/lang/Object;Laqe$c;)V

    .line 342
    invoke-direct {p0}, Laqe;->a()V

    .line 343
    iget v0, p0, Laqe;->e:F

    iget-object v1, p0, Laqe;->m:Laqe$c;

    iget v1, v1, Laqe$c;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Laqe;->p:F

    .line 344
    iget v0, p0, Laqe;->f:F

    iget-object v1, p0, Laqe;->m:Laqe$c;

    iget v1, v1, Laqe$c;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Laqe;->q:F

    .line 345
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget v0, v0, Laqe$c;->c:F

    iget v1, p0, Laqe;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Laqe;->r:F

    .line 346
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget v0, v0, Laqe$c;->d:F

    iget v1, p0, Laqe;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Laqe;->t:F

    .line 347
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget v0, v0, Laqe$c;->e:F

    iget v1, p0, Laqe;->i:F

    div-float/2addr v0, v1

    iput v0, p0, Laqe;->u:F

    .line 348
    iget-object v0, p0, Laqe;->m:Laqe$c;

    iget v0, v0, Laqe$c;->f:F

    iget v1, p0, Laqe;->j:F

    sub-float/2addr v0, v1

    iput v0, p0, Laqe;->s:F

    goto :goto_0
.end method

.method private c()V
    .locals 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 354
    iget-object v0, p0, Laqe;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-direct {p0}, Laqe;->a()V

    .line 359
    iget v0, p0, Laqe;->e:F

    iget v2, p0, Laqe;->p:F

    sub-float v4, v0, v2

    .line 360
    iget v0, p0, Laqe;->f:F

    iget v2, p0, Laqe;->q:F

    sub-float v5, v0, v2

    .line 361
    iget v0, p0, Laqe;->r:F

    iget v2, p0, Laqe;->g:F

    mul-float/2addr v0, v2

    .line 362
    iget v2, p0, Laqe;->t:F

    iget v3, p0, Laqe;->h:F

    mul-float/2addr v2, v3

    .line 363
    iget v3, p0, Laqe;->u:F

    iget v6, p0, Laqe;->i:F

    mul-float/2addr v3, v6

    .line 364
    iget v6, p0, Laqe;->s:F

    iget v7, p0, Laqe;->j:F

    add-float/2addr v6, v7

    .line 367
    iget-object v7, p0, Laqe;->m:Laqe$c;

    iput v4, v7, Laqe$c;->a:F

    iput v5, v7, Laqe$c;->b:F

    cmpl-float v4, v0, v8

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    iput v0, v7, Laqe$c;->c:F

    cmpl-float v0, v2, v8

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, v7, Laqe$c;->d:F

    cmpl-float v0, v3, v8

    if-nez v0, :cond_3

    :goto_2
    iput v1, v7, Laqe$c;->e:F

    iput v6, v7, Laqe$c;->f:F

    .line 369
    iget-object v0, p0, Laqe;->a:Laqe$a;

    iget-object v1, p0, Laqe;->l:Ljava/lang/Object;

    iget-object v2, p0, Laqe;->m:Laqe$c;

    invoke-interface {v0, v1, v2}, Laqe$a;->a(Ljava/lang/Object;Laqe$c;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 367
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 14

    .prologue
    .line 252
    :try_start_0
    sget-boolean v0, Laqe;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Laqe;->w:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    .line 255
    :goto_0
    iget v0, p0, Laqe;->v:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Laqe;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    .line 257
    const/4 v0, 0x0

    .line 307
    :goto_1
    return v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v8, v0, v7

    .line 264
    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-gt v6, v8, :cond_1d

    .line 266
    if-ge v6, v8, :cond_5

    const/4 v0, 0x1

    move v5, v0

    .line 267
    :goto_3
    sget-boolean v0, Laqe;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_9

    .line 273
    :cond_2
    sget-object v1, Laqe;->G:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    :goto_4
    aput v0, v1, v2

    .line 274
    sget-object v1, Laqe;->H:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_5
    aput v0, v1, v2

    .line 275
    sget-object v1, Laqe;->I:[F

    const/4 v2, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_6
    aput v0, v1, v2

    .line 296
    :cond_3
    sget-object v9, Laqe;->G:[F

    sget-object v10, Laqe;->H:[F

    sget-object v11, Laqe;->I:[F

    sget-object v12, Laqe;->J:[I

    if-eqz v5, :cond_d

    const/4 v0, 0x2

    move v3, v0

    :goto_7
    if-nez v5, :cond_4

    const/4 v0, 0x1

    if-eq v4, v0, :cond_e

    const/4 v0, 0x1

    sget v1, Laqe;->F:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    sget v1, Laqe;->E:I

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
    iget-object v5, p0, Laqe;->d:Laqe$b;

    iget-object v13, p0, Laqe;->c:Laqe$b;

    iput-object v13, p0, Laqe;->d:Laqe$b;

    iput-object v5, p0, Laqe;->c:Laqe$b;

    iget-object v5, p0, Laqe;->c:Laqe$b;

    iput-wide v0, v5, Laqe$b;->t:J

    iput v3, v5, Laqe$b;->s:I

    iput v7, v5, Laqe$b;->a:I

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v7, :cond_10

    iget-object v1, v5, Laqe$b;->b:[F

    aget v3, v9, v0

    aput v3, v1, v0

    iget-object v1, v5, Laqe$b;->c:[F

    aget v3, v10, v0

    aput v3, v1, v0

    iget-object v1, v5, Laqe$b;->d:[F

    aget v3, v11, v0

    aput v3, v1, v0

    iget-object v1, v5, Laqe$b;->e:[I

    aget v3, v12, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 266
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3

    .line 273
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_4

    .line 274
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_5

    .line 275
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_6

    .line 280
    :cond_9
    const/16 v0, 0x14

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_3

    .line 284
    sget-object v0, Laqe;->x:Ljava/lang/reflect/Method;

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

    .line 285
    sget-object v3, Laqe;->J:[I

    aput v0, v3, v1

    .line 289
    sget-object v3, Laqe;->G:[F

    if-eqz v5, :cond_a

    sget-object v0, Laqe;->z:Ljava/lang/reflect/Method;

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

    .line 290
    sget-object v3, Laqe;->H:[F

    if-eqz v5, :cond_b

    sget-object v0, Laqe;->A:Ljava/lang/reflect/Method;

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

    .line 291
    sget-object v3, Laqe;->I:[F

    if-eqz v5, :cond_c

    sget-object v0, Laqe;->B:Ljava/lang/reflect/Method;

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

    .line 283
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    .line 289
    :cond_a
    sget-object v0, Laqe;->C:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 290
    :cond_b
    sget-object v0, Laqe;->D:Ljava/lang/reflect/Method;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 291
    :cond_c
    sget-object v0, Laqe;->y:Ljava/lang/reflect/Method;

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

    .line 296
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
    iput-boolean v2, v5, Laqe$b;->n:Z

    const/4 v0, 0x2

    if-lt v7, v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, v5, Laqe$b;->o:Z

    iget-boolean v0, v5, Laqe$b;->o:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Laqe$b;->f:F

    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Laqe$b;->g:F

    const/4 v0, 0x0

    aget v0, v11, v0

    const/4 v1, 0x1

    aget v1, v11, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v5, Laqe$b;->h:F

    const/4 v0, 0x1

    aget v0, v9, v0

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v5, Laqe$b;->i:F

    const/4 v0, 0x1

    aget v0, v10, v0

    const/4 v1, 0x0

    aget v1, v10, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, v5, Laqe$b;->j:F

    :goto_10
    const/4 v0, 0x0

    iput-boolean v0, v5, Laqe$b;->r:Z

    iput-boolean v0, v5, Laqe$b;->q:Z

    iput-boolean v0, v5, Laqe$b;->p:Z

    iget v0, p0, Laqe;->v:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_11
    :goto_11
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_2

    .line 296
    :cond_12
    const/4 v0, 0x0

    goto :goto_f

    :cond_13
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, v5, Laqe$b;->f:F

    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, v5, Laqe$b;->g:F

    const/4 v0, 0x0

    aget v0, v11, v0

    iput v0, v5, Laqe$b;->h:F

    const/4 v0, 0x0

    iput v0, v5, Laqe$b;->j:F

    iput v0, v5, Laqe$b;->i:F

    goto :goto_10

    .line 307
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 296
    :pswitch_0
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->n:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Laqe;->a:Laqe$a;

    invoke-interface {v0}, Laqe$a;->getDraggableObjectAtPoint$73035ef()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laqe;->l:Ljava/lang/Object;

    iget-object v0, p0, Laqe;->l:Ljava/lang/Object;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Laqe;->v:I

    invoke-direct {p0}, Laqe;->b()V

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iput-wide v0, p0, Laqe;->o:J

    iput-wide v0, p0, Laqe;->n:J

    goto :goto_11

    :pswitch_1
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->n:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Laqe;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Laqe;->l:Ljava/lang/Object;

    goto :goto_11

    :cond_14
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->o:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    iput v0, p0, Laqe;->v:I

    invoke-direct {p0}, Laqe;->b()V

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iput-wide v0, p0, Laqe;->n:J

    iget-wide v0, p0, Laqe;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Laqe;->o:J

    goto :goto_11

    :cond_15
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iget-wide v2, p0, Laqe;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_16

    invoke-direct {p0}, Laqe;->b()V

    goto :goto_11

    :cond_16
    invoke-direct {p0}, Laqe;->c()V

    goto :goto_11

    :pswitch_2
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->o:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->n:Z

    if-nez v0, :cond_19

    :cond_17
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-boolean v0, v0, Laqe$b;->n:Z

    if-nez v0, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Laqe;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Laqe;->l:Ljava/lang/Object;

    goto/16 :goto_11

    :cond_18
    const/4 v0, 0x1

    iput v0, p0, Laqe;->v:I

    invoke-direct {p0}, Laqe;->b()V

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iput-wide v0, p0, Laqe;->n:J

    iget-wide v0, p0, Laqe;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Laqe;->o:J

    goto/16 :goto_11

    :cond_19
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget v0, v0, Laqe$b;->f:F

    iget-object v1, p0, Laqe;->d:Laqe$b;

    iget v1, v1, Laqe$b;->f:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget v0, v0, Laqe$b;->g:F

    iget-object v1, p0, Laqe;->d:Laqe$b;

    iget v1, v1, Laqe$b;->g:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Laqe;->c:Laqe$b;

    invoke-virtual {v0}, Laqe$b;->a()F

    move-result v0

    iget-object v1, p0, Laqe;->d:Laqe$b;

    invoke-virtual {v1}, Laqe$b;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1a

    iget-object v0, p0, Laqe;->c:Laqe$b;

    invoke-virtual {v0}, Laqe$b;->b()F

    move-result v0

    iget-object v1, p0, Laqe;->d:Laqe$b;

    invoke-virtual {v1}, Laqe$b;->b()F

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
    invoke-direct {p0}, Laqe;->b()V

    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iput-wide v0, p0, Laqe;->n:J

    iget-wide v0, p0, Laqe;->n:J

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Laqe;->o:J

    goto/16 :goto_11

    :cond_1b
    iget-object v0, p0, Laqe;->c:Laqe$b;

    iget-wide v0, v0, Laqe$b;->t:J

    iget-wide v2, p0, Laqe;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    invoke-direct {p0}, Laqe;->b()V

    goto/16 :goto_11

    :cond_1c
    invoke-direct {p0}, Laqe;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    .line 304
    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
