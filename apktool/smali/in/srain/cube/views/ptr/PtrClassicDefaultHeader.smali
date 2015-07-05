.class public Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lbus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;
    }
.end annotation


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:I

.field private c:Landroid/view/animation/RotateAnimation;

.field private d:Landroid/view/animation/RotateAnimation;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:J

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x96

    iput v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    .line 33
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/16 v0, 0x96

    iput v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    .line 33
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    .line 42
    invoke-direct {p0, p2}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/16 v0, 0x96

    iput v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    .line 33
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;B)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    .line 47
    invoke-direct {p0, p2}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a(Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 97
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    .line 98
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    iget v5, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 102
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    .line 103
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 104
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    iget v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 105
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 106
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbuv$d;->PtrClassicHeader:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    iget v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    .line 55
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a()V

    .line 56
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbuv$b;->cube_ptr_classic_default_header:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lbuv$a;->ptr_classic_header_rotate_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    .line 60
    sget v0, Lbuv$a;->ptr_classic_header_rotate_view_header_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    .line 61
    sget v0, Lbuv$a;->ptr_classic_header_rotate_view_header_last_update:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->i:Landroid/widget/TextView;

    .line 62
    sget v0, Lbuv$a;->ptr_classic_header_rotate_view_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->g:Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b()V

    .line 65
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c()V

    .line 110
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 115
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 173
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->k:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 188
    iget-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cube_ptr_classic_last_update"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    .line 191
    :cond_0
    iget-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 222
    :cond_1
    :goto_0
    return-object v0

    .line 194
    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    sub-long/2addr v2, v4

    .line 195
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-int v1, v4

    .line 196
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 199
    if-lez v1, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbuv$c;->cube_ptr_last_update:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    if-ge v1, v6, :cond_3

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbuv$c;->cube_ptr_seconds_ago:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_3
    div-int/lit8 v1, v1, 0x3c

    .line 209
    if-le v1, v6, :cond_5

    .line 210
    div-int/lit8 v1, v1, 0x3c

    .line 211
    const/16 v2, 0x18

    if-le v1, v2, :cond_4

    .line 212
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 213
    sget-object v2, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbuv$c;->cube_ptr_hours_ago:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 219
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbuv$c;->cube_ptr_minutes_ago:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->k:Z

    .line 122
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d()V

    .line 123
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 227
    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getOffsetToRefresh()I

    move-result v0

    .line 228
    if-ge p5, v0, :cond_2

    if-lt p4, v0, :cond_2

    .line 229
    if-eqz p2, :cond_0

    if-ne p3, v2, :cond_0

    .line 230
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuv$c;->cube_ptr_pull_down_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 233
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    :cond_0
    :goto_1
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuv$c;->cube_ptr_pull_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_2
    if-le p5, v0, :cond_0

    if-gt p4, v0, :cond_0

    .line 237
    if-eqz p2, :cond_0

    if-ne p3, v2, :cond_0

    .line 238
    iget-boolean v0, p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    sget v1, Lbuv$c;->cube_ptr_release_to_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 241
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->k:Z

    .line 129
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d()V

    .line 130
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;)V

    .line 132
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-boolean v0, p1, Lin/srain/cube/views/ptr/PtrFrameLayout;->f:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuv$c;->cube_ptr_pull_down_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuv$c;->cube_ptr_pull_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->k:Z

    .line 146
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c()V

    .line 147
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    sget v1, Lbuv$c;->cube_ptr_refreshing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->d()V

    .line 152
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->l:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->b(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;)V

    .line 153
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->c()V

    .line 159
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->g:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbuv$c;->cube_ptr_refresh_complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cube_ptr_classic_last_update"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    iget-wide v2, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setRotateAniTime(I)V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iput p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b:I

    .line 72
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a()V

    goto :goto_0
.end method
