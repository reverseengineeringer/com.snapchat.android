.class public final Lawf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field public static final KEYBOARD_HEIGHT_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ViewUtils"

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mBus:Lcom/squareup/otto/Bus;

.field private final mSoftNavBarUtils:Lavt;

.field private final mSoftNavManager:Lavu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lawf;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 58
    new-instance v0, Lavt;

    invoke-direct {v0, p1}, Lavt;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lavu;->a()Lavu;

    move-result-object v1

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lawf;-><init>(Lavt;Lavu;Lcom/squareup/otto/Bus;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lavt;Lavu;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1    # Lavt;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lavu;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/squareup/otto/Bus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lawf;->mSoftNavBarUtils:Lavt;

    .line 64
    iput-object p2, p0, Lawf;->mSoftNavManager:Lavu;

    .line 65
    iput-object p3, p0, Lawf;->mBus:Lcom/squareup/otto/Bus;

    .line 66
    return-void
.end method

.method public static a(FLandroid/content/Context;)F
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
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

    .line 143
    packed-switch p0, :pswitch_data_0

    .line 153
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

    .line 145
    :pswitch_0
    const/16 v0, 0x5a

    .line 154
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 147
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 149
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 143
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
    .line 191
    invoke-static {p0}, Lawf;->c(I)Z

    move-result v3

    .line 192
    invoke-static {p0}, Lawf;->f(I)Z

    move-result v0

    .line 193
    invoke-static {p0}, Lawf;->d(I)Z

    move-result v1

    .line 194
    invoke-static {p0}, Lawf;->e(I)Z

    move-result v2

    .line 198
    packed-switch p1, :pswitch_data_0

    .line 224
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

    .line 228
    :goto_0
    if-eqz v0, :cond_1

    .line 231
    const/16 v0, 0x30

    .line 238
    :goto_1
    if-eqz v2, :cond_3

    .line 239
    or-int/lit8 v0, v0, 0x3

    :goto_2
    move p0, v0

    .line 246
    :cond_0
    return p0

    :pswitch_1
    move v4, v3

    move v3, v2

    move v2, v4

    .line 209
    goto :goto_0

    :pswitch_2
    move v4, v2

    move v2, v0

    move v0, v1

    move v1, v4

    .line 216
    goto :goto_0

    :pswitch_3
    move v4, v3

    move v3, v0

    move v0, v2

    move v2, v1

    move v1, v4

    .line 222
    goto :goto_0

    .line 232
    :cond_1
    if-eqz v3, :cond_2

    .line 233
    const/16 v0, 0x50

    goto :goto_1

    .line 235
    :cond_2
    const/16 v0, 0x10

    goto :goto_1

    .line 240
    :cond_3
    if-eqz v1, :cond_4

    .line 241
    or-int/lit8 v0, v0, 0x5

    goto :goto_2

    .line 243
    :cond_4
    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
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
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Landroid/util/DisplayMetrics;Z)I
    .locals 2

    .prologue
    .line 517
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

    .line 326
    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 328
    const/4 v0, 0x1

    .line 329
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 333
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 334
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 337
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-static {p1}, Lawf;->a(Landroid/content/Context;)I

    move-result v0

    .line 166
    invoke-static {p1}, Lawf;->c(Landroid/content/Context;)I

    move-result v1

    .line 167
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

    .line 476
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

    .line 481
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

    .line 486
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

    .line 491
    invoke-static {v2, v1}, Lawf;->a([[F[[F)[[F

    move-result-object v1

    invoke-static {v1, v0}, Lawf;->a([[F[[F)[[F

    move-result-object v0

    .line 492
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

    .line 498
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    return-object v0

    .line 476
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

    .line 486
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
    .line 577
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 578
    sparse-switch v0, :sswitch_data_0

    .line 598
    const-string v0, "DENSITY_UNKNOWN"

    :goto_0
    return-object v0

    .line 580
    :sswitch_0
    const-string v0, "DENSITY_LOW"

    goto :goto_0

    .line 582
    :sswitch_1
    const-string v0, "DENSITY_MEDIUM"

    goto :goto_0

    .line 584
    :sswitch_2
    const-string v0, "DENSITY_HIGH"

    goto :goto_0

    .line 586
    :sswitch_3
    const-string v0, "DENSITY_XHIGH"

    goto :goto_0

    .line 588
    :sswitch_4
    const-string v0, "DENSITY_XXHIGH"

    goto :goto_0

    .line 590
    :sswitch_5
    const-string v0, "DENSITY_XXXHIGH"

    goto :goto_0

    .line 592
    :sswitch_6
    const-string v0, "DENSITY_TV"

    goto :goto_0

    .line 594
    :sswitch_7
    const-string v0, "DENSITY_400"

    goto :goto_0

    .line 596
    :sswitch_8
    const-string v0, "DENSITY_560"

    goto :goto_0

    .line 578
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
    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 454
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 455
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 634
    if-eqz p0, :cond_0

    .line 635
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 569
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 570
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 612
    new-instance v0, Lawf$1;

    invoke-direct {v0, p1, p2, p0}, Lawf$1;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method public static a(Landroid/widget/ImageView;F)V
    .locals 2

    .prologue
    .line 553
    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_0

    .line 556
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 557
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 560
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/Window;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    if-nez p0, :cond_1

    .line 111
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

    .line 502
    array-length v5, p0

    .line 503
    aget-object v0, p0, v2

    array-length v6, v0

    .line 504
    aget-object v0, p1, v2

    array-length v7, v0

    .line 505
    filled-new-array {v5, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v4, v2

    .line 506
    :goto_0
    if-ge v4, v5, :cond_2

    move v3, v2

    .line 507
    :goto_1
    if-ge v3, v7, :cond_1

    move v1, v2

    .line 508
    :goto_2
    if-ge v1, v6, :cond_0

    .line 509
    aget-object v8, v0, v4

    aget v9, v8, v3

    aget-object v10, p0, v4

    aget v10, v10, v1

    aget-object v11, p1, v1

    aget v11, v11, v3

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v8, v3

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 507
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 506
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 513
    :cond_2
    return-object v0
.end method

.method public static b(FLandroid/content/Context;)F
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
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
    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 121
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static b(Landroid/util/DisplayMetrics;Z)I
    .locals 2

    .prologue
    .line 521
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
    .line 427
    if-nez p0, :cond_1

    .line 437
    :cond_0
    return-void

    .line 431
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 432
    check-cast p0, Landroid/view/ViewGroup;

    .line 433
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 434
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lawf;->b(Landroid/view/View;)V

    instance-of v2, v0, Laqa;

    if-eqz v2, :cond_2

    check-cast v0, Laqa;

    invoke-interface {v0}, Laqa;->d()V

    .line 433
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 171
    packed-switch p0, :pswitch_data_0

    .line 179
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

    .line 174
    :pswitch_0
    const/4 v0, 0x1

    .line 180
    :cond_0
    :pswitch_1
    return v0

    .line 171
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
    .line 128
    new-instance v0, Lavt;

    invoke-direct {v0, p0}, Lavt;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-static {p0}, Lawf;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Lavt;->b()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 470
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 472
    :cond_0
    return-void
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 250
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
    .line 134
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 1

    .prologue
    .line 254
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
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 644
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
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 656
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 658
    :cond_0
    sget-object v0, Lawf;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 660
    add-int/lit8 v0, v2, 0x1

    .line 661
    const v3, 0xffffff

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    .line 663
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 665
    sget-object v4, Lawf;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    .line 666
    return v2
.end method

.method public static e(I)Z
    .locals 1

    .prologue
    .line 258
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

    .line 268
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 295
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 1

    .prologue
    .line 262
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
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 312
    if-nez p0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 317
    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Lavu;->a()Lavu;

    move-result-object v0

    .line 678
    iget-boolean v0, v0, Lavu;->mIsImmersiveModeOn:Z

    if-eqz v0, :cond_0

    .line 679
    invoke-static {p0}, Lawf;->c(Landroid/content/Context;)I

    move-result v0

    .line 681
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lawf;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 407
    if-eqz p2, :cond_1

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 409
    :goto_0
    iget-object v1, p0, Lawf;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lbfk;

    invoke-direct {v2, v0}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 414
    if-eqz p2, :cond_2

    .line 415
    iget-object v0, p0, Lawf;->mSoftNavManager:Lavu;

    invoke-virtual {v0}, Lavu;->c()V

    .line 421
    :goto_1
    iget-object v0, p0, Lawf;->mSoftNavBarUtils:Lavt;

    invoke-virtual {v0}, Lavt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 424
    :cond_0
    return-void

    .line 407
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Lawf;->mSoftNavManager:Lavu;

    invoke-virtual {v0}, Lavu;->b()V

    goto :goto_1

    .line 422
    :cond_3
    const/4 v0, 0x2

    goto :goto_2
.end method
