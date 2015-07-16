.class public Lnet/hockeyapp/android/views/AttachmentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TextView;

.field private final c:Landroid/content/Context;

.field private final d:Lbwt;

.field private final e:Landroid/net/Uri;

.field private final f:Ljava/lang/String;

.field private g:Landroid/widget/ImageView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->c:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->a:Landroid/view/ViewGroup;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->d:Lbwt;

    .line 99
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    .line 100
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->f:Ljava/lang/String;

    .line 102
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(I)V

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(Landroid/content/Context;Z)V

    .line 105
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/AttachmentView$1;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 121
    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/AttachmentView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lbwt;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 127
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView;->c:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->a:Landroid/view/ViewGroup;

    .line 129
    iput-object p3, p0, Lnet/hockeyapp/android/views/AttachmentView;->d:Lbwt;

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lbwa;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p3}, Lbwt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    .line 131
    iget-object v0, p3, Lbwt;->c:Ljava/lang/String;

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->f:Ljava/lang/String;

    .line 133
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(I)V

    .line 134
    invoke-direct {p0, p1, v3}, Lnet/hockeyapp/android/views/AttachmentView;->a(Landroid/content/Context;Z)V

    .line 136
    iput v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-direct {p0, v3}, Lnet/hockeyapp/android/views/AttachmentView;->a(Z)V

    .line 139
    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 299
    :try_start_0
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->c:Landroid/content/Context;

    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Lbxi;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    .line 300
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    if-ne v1, v3, :cond_0

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->j:I

    move v2, v1

    .line 301
    :goto_0
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->k:I

    .line 303
    :goto_1
    iget-object v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->c:Landroid/content/Context;

    iget-object v4, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v5, v2, v1}, Lbxi;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    :goto_2
    return-object v0

    .line 300
    :cond_0
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    move v2, v1

    goto :goto_0

    .line 301
    :cond_1
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->i:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/hockeyapp/android/views/AttachmentView;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 311
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/AttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 183
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->l:I

    .line 185
    int-to-float v1, p1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 186
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 188
    mul-int/lit8 v2, v1, 0x2

    sub-int v2, v0, v2

    iget v3, p0, Lnet/hockeyapp/android/views/AttachmentView;->l:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 189
    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->l:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 191
    div-int/lit8 v1, v2, 0x3

    iput v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    .line 192
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->j:I

    .line 194
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->i:I

    .line 195
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->j:I

    iput v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->k:I

    .line 196
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x50

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 199
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->l:I

    invoke-virtual {p0, v5, v0, v5, v5}, Lnet/hockeyapp/android/views/AttachmentView;->setPadding(IIII)V

    .line 203
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    .line 206
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 209
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    const-string v1, "#80262626"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 213
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 218
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 221
    if-eqz p2, :cond_0

    .line 222
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 223
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setAdjustViewBounds(Z)V

    .line 225
    const-string v2, "ic_menu_delete"

    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 227
    new-instance v2, Lnet/hockeyapp/android/views/AttachmentView$2;

    invoke-direct {v2, p0}, Lnet/hockeyapp/android/views/AttachmentView$2;-><init>(Lnet/hockeyapp/android/views/AttachmentView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    :cond_0
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->addView(Landroid/view/View;)V

    .line 240
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x1

    .line 243
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->j:I

    .line 244
    :goto_0
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    if-ne v1, v4, :cond_1

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->k:I

    .line 246
    :goto_1
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 247
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 249
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 251
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 252
    iget-object v2, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 253
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 254
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 256
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    new-instance v1, Lnet/hockeyapp/android/views/AttachmentView$3;

    invoke-direct {v1, p0, p2}, Lnet/hockeyapp/android/views/AttachmentView$3;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void

    .line 243
    :cond_0
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    goto :goto_0

    .line 244
    :cond_1
    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->i:I

    goto :goto_1
.end method

.method static synthetic a(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 272
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 273
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 275
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 277
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    const-string v1, "#eeeeee"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 278
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 279
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    iget v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 280
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    const-string v1, "ic_menu_attachment"

    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/AttachmentView;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->g:Landroid/widget/ImageView;

    new-instance v1, Lnet/hockeyapp/android/views/AttachmentView$4;

    invoke-direct {v1, p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$4;-><init>(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method static synthetic b(Lnet/hockeyapp/android/views/AttachmentView;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->a(Z)V

    return-void
.end method

.method static synthetic c(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic d(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAttachment()Lbwt;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->d:Lbwt;

    return-object v0
.end method

.method public getAttachmentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public getEffectiveMaxHeight()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->k:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->i:I

    goto :goto_0
.end method

.method public getGap()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->l:I

    return v0
.end method

.method public getMaxHeightLandscape()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->k:I

    return v0
.end method

.method public getMaxHeightPortrait()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->i:I

    return v0
.end method

.method public getWidthLandscape()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->j:I

    return v0
.end method

.method public getWidthPortrait()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->h:I

    return v0
.end method

.method public setImage(Landroid/graphics/Bitmap;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lnet/hockeyapp/android/views/AttachmentView;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/AttachmentView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iput p2, p0, Lnet/hockeyapp/android/views/AttachmentView;->m:I

    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/AttachmentView;->a(Z)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1, v2}, Lnet/hockeyapp/android/views/AttachmentView;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
