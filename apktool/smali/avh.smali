.class public final Lavh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field public static final KEYBOARD_HEIGHT_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mSoftNavBarUtils:Lauv;

.field private final mSoftNavManager:Lauw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lavh;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 57
    new-instance v0, Lauv;

    invoke-direct {v0, p1}, Lauv;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lauw;->a()Lauw;

    move-result-object v1

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lavh;-><init>(Lauv;Lauw;Lcom/squareup/otto/Bus;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Lauv;Lauw;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1    # Lauv;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lauw;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/otto/Bus;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lavh;->mSoftNavBarUtils:Lauv;

    .line 63
    iput-object p2, p0, Lavh;->mSoftNavManager:Lauw;

    .line 64
    iput-object p3, p0, Lavh;->mBus:Lcom/squareup/otto/Bus;

    .line 65
    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 76
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    packed-switch p0, :pswitch_data_0

    .line 152
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    const/16 v0, 0x5a

    .line 153
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 146
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 148
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(II)I
    .locals 5

    .prologue
    .line 190
    invoke-static {p0}, Lavh;->c(I)Z

    move-result v3

    .line 191
    invoke-static {p0}, Lavh;->f(I)Z

    move-result v0

    .line 192
    invoke-static {p0}, Lavh;->d(I)Z

    move-result v1

    .line 193
    invoke-static {p0}, Lavh;->e(I)Z

    move-result v2

    .line 197
    packed-switch p1, :pswitch_data_0

    .line 223
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v4, v0

    move v0, v3

    move v3, v1

    move v1, v4

    .line 227
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    const/16 v0, 0x30

    .line 237
    :goto_1
    if-eqz v2, :cond_3

    .line 238
    or-int/lit8 v0, v0, 0x3

    :goto_2
    move p0, v0

    .line 245
    :cond_0
    return p0

    :pswitch_1
    move v4, v3

    move v3, v2

    move v2, v4

    .line 208
    goto :goto_0

    :pswitch_2
    move v4, v2

    move v2, v0

    move v0, v1

    move v1, v4

    .line 215
    goto :goto_0

    :pswitch_3
    move v4, v3

    move v3, v0

    move v0, v2

    move v2, v1

    move v1, v4

    .line 221
    goto :goto_0

    .line 231
    :cond_1
    if-eqz v3, :cond_2

    .line 232
    const/16 v0, 0x50

    goto :goto_1

    .line 234
    :cond_2
    const/16 v0, 0x10

    goto :goto_1

    .line 239
    :cond_3
    if-eqz v1, :cond_4

    .line 240
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 242
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 115
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;Z)I
    .locals 2

    .prologue
    .line 516
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 325
    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 327
    const/4 v0, 0x1

    .line 328
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 332
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 333
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 164
    invoke-static {p1}, Lavh;->a(Landroid/content/Context;)I

    move-result v0

    .line 165
    invoke-static {p1}, Lavh;->c(Landroid/content/Context;)I

    move-result v1

    .line 166
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(DD)Landroid/graphics/ColorFilter;
    .locals 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 475
    new-array v0, v10, [[F

    new-array v1, v10, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    new-array v1, v10, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v8

    new-array v1, v10, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v9

    .line 480
    new-array v1, v10, [[F

    new-array v2, v10, [F

    double-to-float v3, p2

    aput v3, v2, v7

    aput v6, v2, v8

    aput v6, v2, v9

    aput-object v2, v1, v7

    new-array v2, v10, [F

    aput v6, v2, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v3, v4

    aput v3, v2, v9

    aput-object v2, v1, v8

    new-array v2, v10, [F

    aput v6, v2, v7

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v9

    aput-object v2, v1, v9

    .line 485
    new-array v2, v10, [[F

    new-array v3, v10, [F

    fill-array-data v3, :array_3

    aput-object v3, v2, v7

    new-array v3, v10, [F

    fill-array-data v3, :array_4

    aput-object v3, v2, v8

    new-array v3, v10, [F

    fill-array-data v3, :array_5

    aput-object v3, v2, v9

    .line 490
    invoke-static {v2, v1}, Lavh;->a([[F[[F)[[F

    move-result-object v1

    invoke-static {v1, v0}, Lavh;->a([[F[[F)[[F

    move-result-object v0

    .line 491
    const/16 v1, 0x14

    new-array v1, v1, [F

    aget-object v2, v0, v7

    aget v2, v2, v7

    aput v2, v1, v7

    aget-object v2, v0, v7

    aget v2, v2, v8

    aput v2, v1, v8

    aget-object v2, v0, v7

    aget v2, v2, v9

    aput v2, v1, v9

    aput v6, v1, v10

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aget-object v3, v0, v8

    aget v3, v3, v7

    aput v3, v1, v2

    const/4 v2, 0x6

    aget-object v3, v0, v8

    aget v3, v3, v8

    aput v3, v1, v2

    const/4 v2, 0x7

    aget-object v3, v0, v8

    aget v3, v3, v9

    aput v3, v1, v2

    const/16 v2, 0x8

    aput v6, v1, v2

    const/16 v2, 0x9

    aput v6, v1, v2

    const/16 v2, 0xa

    aget-object v3, v0, v9

    aget v3, v3, v7

    aput v3, v1, v2

    const/16 v2, 0xb

    aget-object v3, v0, v9

    aget v3, v3, v8

    aput v3, v1, v2

    const/16 v2, 0xc

    aget-object v0, v0, v9

    aget v0, v0, v9

    aput v0, v1, v2

    const/16 v0, 0xd

    aput v6, v1, v0

    const/16 v0, 0xe

    aput v6, v1, v0

    const/16 v0, 0xf

    aput v6, v1, v0

    const/16 v0, 0x10

    aput v6, v1, v0

    const/16 v0, 0x11

    aput v6, v1, v0

    const/16 v0, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    const/16 v0, 0x13

    aput v6, v1, v0

    .line 497
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v0

    .line 475
    nop

    :array_0
    .array-data 4
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
    .end array-data

    :array_1
    .array-data 4
        0x3f189375    # 0.596f
        -0x4173b646    # -0.274f
        -0x415ba5e3    # -0.321f
    .end array-data

    :array_2
    .array-data 4
        0x3e581062    # 0.211f
        -0x40fa1cac    # -0.523f
        0x3e9f3b64    # 0.311f
    .end array-data

    .line 485
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f74bc6a    # 0.956f
        0x3f1ef9db    # 0.621f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        -0x4174bc6a    # -0.272f
        -0x40da5e35    # -0.647f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        -0x40724dd3    # -1.107f
        0x3fda3d71    # 1.705f
    .end array-data
.end method

.method public static a(Landroid/util/DisplayMetrics;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 558
    sparse-switch v0, :sswitch_data_0

    .line 578
    const-string v0, "DENSITY_UNKNOWN"

    :goto_0
    return-object v0

    .line 560
    :sswitch_0
    const-string v0, "DENSITY_LOW"

    goto :goto_0

    .line 562
    :sswitch_1
    const-string v0, "DENSITY_MEDIUM"

    goto :goto_0

    .line 564
    :sswitch_2
    const-string v0, "DENSITY_HIGH"

    goto :goto_0

    .line 566
    :sswitch_3
    const-string v0, "DENSITY_XHIGH"

    goto :goto_0

    .line 568
    :sswitch_4
    const-string v0, "DENSITY_XXHIGH"

    goto :goto_0

    .line 570
    :sswitch_5
    const-string v0, "DENSITY_XXXHIGH"

    goto :goto_0

    .line 572
    :sswitch_6
    const-string v0, "DENSITY_TV"

    goto :goto_0

    .line 574
    :sswitch_7
    const-string v0, "DENSITY_400"

    goto :goto_0

    .line 576
    :sswitch_8
    const-string v0, "DENSITY_560"

    goto :goto_0

    .line 558
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_6
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x190 -> :sswitch_7
        0x1e0 -> :sswitch_4
        0x230 -> :sswitch_8
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method public static a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 453
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 454
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    if-nez p0, :cond_0

    .line 278
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to hide keyboard with null context"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 614
    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 592
    new-instance v0, Lavh$1;

    invoke-direct {v0, p1, p2, p0}, Lavh$1;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method public static a(Landroid/view/Window;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([[F[[F)[[F
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 501
    array-length v5, p0

    .line 502
    aget-object v0, p0, v2

    array-length v6, v0

    .line 503
    aget-object v0, p1, v2

    array-length v7, v0

    .line 504
    filled-new-array {v5, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v4, v2

    .line 505
    :goto_0
    if-ge v4, v5, :cond_2

    move v3, v2

    .line 506
    :goto_1
    if-ge v3, v7, :cond_1

    move v1, v2

    .line 507
    :goto_2
    if-ge v1, v6, :cond_0

    .line 508
    aget-object v8, v0, v4

    aget v9, v8, v3

    aget-object v10, p0, v4

    aget v10, v10, v1

    aget-object v11, p1, v1

    aget v11, v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 506
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 505
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 512
    :cond_2
    return-object v0
.end method

.method public static b(FLandroid/content/Context;)F
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float v0, p0, v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;Z)I
    .locals 2

    .prologue
    .line 520
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 426
    if-nez p0, :cond_1

    .line 436
    :cond_0
    return-void

    .line 430
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 431
    check-cast p0, Landroid/view/ViewGroup;

    .line 432
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 433
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lavh;->b(Landroid/view/View;)V

    instance-of v2, v0, Lape;

    if-eqz v2, :cond_2

    check-cast v0, Lape;

    invoke-interface {v0}, Lape;->d()V

    .line 432
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    packed-switch p0, :pswitch_data_0

    .line 178
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected rotation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :pswitch_0
    const/4 v0, 0x1

    .line 179
    :cond_0
    :pswitch_1
    return v0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lauv;

    invoke-direct {v0, p0}, Lauv;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lavh;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Lauv;->b()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 469
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 471
    :cond_0
    return-void
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 249
    and-int/lit8 v0, p0, 0x30

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 133
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1

    .prologue
    .line 253
    and-int/lit8 v0, p0, 0x50

    and-int/lit8 v0, v0, -0x11

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 624
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)I
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 638
    :cond_0
    sget-object v0, Lavh;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 640
    add-int/lit8 v0, v2, 0x1

    .line 641
    const v3, 0xffffff

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    .line 643
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 645
    sget-object v4, Lavh;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 646
    return v2
.end method

.method public static e(I)Z
    .locals 1

    .prologue
    .line 257
    and-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 267
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 268
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    .line 270
    goto :goto_0

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to show keyboard with null context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 1

    .prologue
    .line 261
    and-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 311
    if-nez p0, :cond_0

    .line 312
    const-string v0, "ViewUtils"

    const-string v1, "Attempting to show keyboard with null context"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 316
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 657
    invoke-static {}, Lauw;->a()Lauw;

    move-result-object v0

    .line 658
    iget-boolean v0, v0, Lauw;->mIsImmersiveModeOn:Z

    if-eqz v0, :cond_0

    .line 659
    invoke-static {p0}, Lavh;->c(Landroid/content/Context;)I

    move-result v0

    .line 661
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lavh;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 406
    if-eqz p2, :cond_1

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 408
    :goto_0
    iget-object v1, p0, Lavh;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbel;

    invoke-direct {v2, v0}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 413
    if-eqz p2, :cond_2

    .line 414
    iget-object v0, p0, Lavh;->mSoftNavManager:Lauw;

    invoke-virtual {v0}, Lauw;->c()V

    .line 420
    :goto_1
    iget-object v0, p0, Lavh;->mSoftNavBarUtils:Lauv;

    invoke-virtual {v0}, Lauv;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 423
    :cond_0
    return-void

    .line 406
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lavh;->mSoftNavManager:Lauw;

    invoke-virtual {v0}, Lauw;->b()V

    goto :goto_1

    .line 421
    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method
