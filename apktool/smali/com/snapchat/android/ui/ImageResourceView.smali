.class public Lcom/snapchat/android/ui/ImageResourceView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lape;
.implements Lcom/snapchat/android/ui/SnapchatResource$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ImageResourceView$1;
    }
.end annotation


# static fields
.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;


# instance fields
.field protected a:Lapb;

.field protected b:I

.field protected c:I

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/lang/String;

.field private final l:Landroid/graphics/Paint;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    sput v0, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 70
    const v2, 0x7f0c015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 71
    const v2, 0x7f0c0294

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    .line 72
    const v2, 0x7f0c021a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->i:Ljava/lang/String;

    .line 73
    const v2, 0x7f0c021c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->j:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 70
    const v2, 0x7f0c015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 71
    const v2, 0x7f0c0294

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    .line 72
    const v2, 0x7f0c021a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->i:Ljava/lang/String;

    .line 73
    const v2, 0x7f0c021c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->j:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    sget v0, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 70
    const v2, 0x7f0c015d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    .line 71
    const v2, 0x7f0c0294

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    .line 72
    const v2, 0x7f0c021a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/ImageResourceView;->i:Ljava/lang/String;

    .line 73
    const v2, 0x7f0c021c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ImageResourceView;->j:Ljava/lang/String;

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    sget v1, Lcom/snapchat/android/ui/ImageResourceView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    const/16 v0, 0xff

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 62
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/ImageResourceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0, v2}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$a;)V

    .line 220
    iput-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Lalv;->a()Lalv;

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lalv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapb;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 128
    :cond_0
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setImageResource(I)V

    .line 171
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->invalidate()V

    .line 175
    :goto_1
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/snapchat/android/ui/ImageResourceView;->e()V

    goto :goto_1

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapb;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING_FAILED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADING:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/ImageResourceView;->e()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 185
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v2, :cond_0

    .line 192
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView$1;->a:[I

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v3}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 199
    :pswitch_1
    sget-object v2, Lcom/snapchat/android/ui/ImageResourceView;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/ui/ImageResourceView;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x7f

    const/4 v3, 0x1

    const/16 v2, 0xff

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0, v5}, Lapb;->a(Lcom/snapchat/android/ui/SnapchatResource$a;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    new-instance v0, Lapb;

    invoke-direct {v0, p1, p0}, Lapb;-><init>(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/ui/SnapchatResource$a;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapb;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 98
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->F()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->b:I

    .line 99
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->G()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->c:I

    .line 102
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iput v4, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 104
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->k:Ljava/lang/String;

    .line 119
    :cond_3
    :goto_0
    return-void

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->O()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    iput v4, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 107
    sget-object v0, Lcom/snapchat/android/ui/ImageResourceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->k:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->a:Lapb;

    invoke-virtual {v0}, Lapb;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->LOADED:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    if-eq v0, v2, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 115
    :cond_6
    iput v2, p0, Lcom/snapchat/android/ui/ImageResourceView;->m:I

    .line 116
    iput-object v5, p0, Lcom/snapchat/android/ui/ImageResourceView;->k:Ljava/lang/String;

    goto :goto_0
.end method
