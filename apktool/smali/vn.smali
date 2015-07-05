.class public Lvn;
.super Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Lavl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvn$a;,
        Lvn$b;
    }
.end annotation


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Landroid/content/SharedPreferences;

.field protected final d:Landroid/widget/ImageButton;

.field protected final e:Landroid/widget/ImageButton;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Landroid/widget/TextView;

.field protected final h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

.field protected final i:Landroid/widget/ImageButton;

.field protected final j:Lasv;

.field protected final k:Landroid/view/View;

.field protected final l:Landroid/view/View;

.field protected final m:Landroid/widget/TextView;

.field private final n:Lapm;

.field private final o:Landroid/view/ScaleGestureDetector;

.field private final p:Landroid/view/GestureDetector;

.field private final q:Lcom/snapchat/android/camera/AutofocusCrosshair;

.field private final r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-direct {p0, p3}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;-><init>(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 72
    iput-boolean v5, p0, Lvn;->s:Z

    .line 78
    iput-object p1, p0, Lvn;->b:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lvn;->c:Landroid/content/SharedPreferences;

    .line 81
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 83
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    const v1, 0x7f040014

    invoke-virtual {v0, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01da

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/util/emoji/Emoji;->HAPPY_PERSON_RAISING_ONE_HAND:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v4}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvn;->r:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lvn$b;

    invoke-direct {v2, p0, v5}, Lvn$b;-><init>(Lvn;B)V

    invoke-direct {v0, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lvn;->o:Landroid/view/ScaleGestureDetector;

    .line 90
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v2, Lvn$a;

    invoke-direct {v2, p0, v5}, Lvn$a;-><init>(Lvn;B)V

    invoke-direct {v0, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lvn;->p:Landroid/view/GestureDetector;

    .line 93
    const v0, 0x7f0a00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/AutofocusCrosshair;

    iput-object v0, p0, Lvn;->q:Lcom/snapchat/android/camera/AutofocusCrosshair;

    .line 94
    const v0, 0x7f0a009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvn;->d:Landroid/widget/ImageButton;

    .line 95
    const v0, 0x7f0a009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvn;->e:Landroid/widget/ImageButton;

    .line 96
    const v0, 0x7f0a00a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvn;->f:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0a00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvn;->g:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iput-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    .line 99
    const v0, 0x7f0a00a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvn;->k:Landroid/view/View;

    .line 100
    const v0, 0x7f0a009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lvn;->l:Landroid/view/View;

    .line 101
    const v0, 0x7f0a009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lvn;->m:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lvn;->i:Landroid/widget/ImageButton;

    .line 104
    iget-object v0, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lvn;->a(Z)V

    .line 107
    iget-object v0, p0, Lvn;->d:Landroid/widget/ImageButton;

    new-instance v1, Lasv;

    iget-object v2, p0, Lvn;->d:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    new-instance v0, Lasv;

    iget-object v1, p0, Lvn;->e:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Lasv;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lvn;->j:Lasv;

    .line 109
    iget-object v0, p0, Lvn;->e:Landroid/widget/ImageButton;

    iget-object v1, p0, Lvn;->j:Lasv;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    iget-object v0, p0, Lvn;->f:Landroid/widget/TextView;

    new-instance v1, Lasv;

    iget-object v2, p0, Lvn;->f:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v0, p0, Lvn;->i:Landroid/widget/ImageButton;

    new-instance v1, Lasv;

    iget-object v2, p0, Lvn;->i:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    iget-object v0, p0, Lvn;->g:Landroid/widget/TextView;

    new-instance v1, Lasv;

    iget-object v2, p0, Lvn;->g:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lvn;->i:Landroid/widget/ImageButton;

    new-instance v1, Lvn$1;

    invoke-direct {v1, p0}, Lvn$1;-><init>(Lvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lvn;->d:Landroid/widget/ImageButton;

    new-instance v1, Lvn$2;

    invoke-direct {v1, p0}, Lvn$2;-><init>(Lvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lvn;->e:Landroid/widget/ImageButton;

    new-instance v1, Lvn$3;

    invoke-direct {v1, p0}, Lvn$3;-><init>(Lvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lvn;->f:Landroid/widget/TextView;

    new-instance v1, Lvn$4;

    invoke-direct {v1, p0}, Lvn$4;-><init>(Lvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lvn;->g:Landroid/widget/TextView;

    new-instance v1, Lvn$5;

    invoke-direct {v1, p0}, Lvn$5;-><init>(Lvn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->setClickable(Z)V

    .line 151
    new-instance v0, Lapm;

    iget-object v1, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iget-object v2, p0, Lvn;->o:Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-direct {v0, v1, v2, v3}, Lapm;-><init>(Lcom/snapchat/android/ui/camera/TakeSnapButton;Landroid/view/ScaleGestureDetector;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    iput-object v0, p0, Lvn;->n:Lapm;

    .line 152
    iget-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iget-object v1, p0, Lvn;->n:Lapm;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    invoke-virtual {p0}, Lvn;->a()V

    .line 155
    return-void
.end method

.method static synthetic a(Lvn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lvn;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Landroid/widget/TextView;III)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 320
    if-lez p3, :cond_1

    .line 321
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 322
    if-ge p3, v3, :cond_0

    .line 323
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 325
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 335
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v0, "+"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 329
    invoke-virtual {p0, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 333
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lvn;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lvn;->s:Z

    return v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lajx;->d()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lajx;->K()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v4, p0, Lvn;->e:Landroid/widget/ImageButton;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v3, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lvn;->d:Landroid/widget/ImageButton;

    iget-object v4, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v4}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lvn;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->k_()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02001d

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 194
    iget-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->invalidate()V

    .line 197
    invoke-static {}, Lvn;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lvn;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lvn;->k:Landroid/view/View;

    const v1, 0x7f0a00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lvn;->b:Landroid/content/Context;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_4
    invoke-virtual {p0, v3}, Lvn;->c(Z)V

    .line 206
    invoke-virtual {p0}, Lvn;->b()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 192
    :cond_4
    const v0, 0x7f02001c

    goto :goto_3

    .line 202
    :cond_5
    iget-object v0, p0, Lvn;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public final a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 343
    iget-object v1, p0, Lvn;->q:Lcom/snapchat/android/camera/AutofocusCrosshair;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1}, Lcom/snapchat/android/camera/AutofocusCrosshair;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Lcom/snapchat/android/camera/AutofocusCrosshair;->b:I

    int-to-float v4, v4

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    new-instance v5, Landroid/graphics/Point;

    sub-float/2addr v2, v4

    float-to-int v2, v2

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v3, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Lcom/snapchat/android/camera/AutofocusCrosshair;->setVisibility(I)V

    iget-object v0, v1, Lcom/snapchat/android/camera/AutofocusCrosshair;->a:Lapn;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 178
    iget-object v1, p0, Lvn;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f020090

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 180
    iget-object v1, p0, Lvn;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const-string v0, "selfie"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .line 178
    :cond_0
    const v0, 0x7f020020

    goto :goto_0

    .line 180
    :cond_1
    const-string v0, "forward"

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lvn$6;

    invoke-direct {v0, p0}, Lvn$6;-><init>(Lvn;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public final b(Z)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 354
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lvn;->s:Z

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_DOWN:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    .line 358
    iget-object v0, p0, Lvn;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_UP:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-boolean v0, p0, Lvn;->s:Z

    if-eq p1, v0, :cond_0

    .line 366
    iput-boolean p1, p0, Lvn;->s:Z

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lvn;->s:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->getX()F

    move-result v5

    iget-object v6, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    iget-object v6, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->getY()F

    move-result v6

    iget-object v7, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v7}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 370
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public c()V
    .locals 0

    .prologue
    .line 339
    invoke-static {}, Laut;->b()V

    .line 340
    return-void
.end method

.method protected c(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 306
    if-eqz p1, :cond_0

    move v0, v1

    .line 307
    :goto_0
    iget-object v2, p0, Lvn;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lvn;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v2, p0, Lvn;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lvn;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lvn;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 311
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public final d()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvn;->c(Z)V

    .line 160
    iget-object v0, p0, Lvn;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lvn;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->a:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->d:Z

    .line 163
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lvn;->h:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iget-object v1, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->d:Z

    iput-boolean v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->b:Z

    iput-boolean v2, v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;->c:Z

    .line 168
    iget-object v0, p0, Lvn;->n:Lapm;

    invoke-virtual {v0}, Lapm;->a()V

    .line 169
    return-void
.end method

.method protected final g()V
    .locals 7
    .annotation build Lcaq;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 222
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    .line 223
    if-nez v1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 226
    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lajv;->h()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v0

    .line 227
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lvn;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v0

    .line 228
    :goto_2
    if-eqz v2, :cond_7

    invoke-static {}, Lajx;->aW()Z

    move-result v1

    if-nez v1, :cond_7

    move v4, v0

    .line 229
    :goto_3
    invoke-static {}, Lajx;->aS()Z

    move-result v5

    .line 230
    if-nez v4, :cond_1

    if-nez v5, :cond_8

    :cond_1
    invoke-static {}, Lvn;->i()Z

    move-result v1

    if-nez v1, :cond_8

    move v3, v0

    .line 232
    :goto_4
    new-instance v0, Lvn$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lvn$9;-><init>(Lvn;ZZZZ)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 234
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    invoke-virtual {v0}, Lakc;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v6

    move v1, v6

    move v3, v6

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v5, :cond_2

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-nez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedCash:Z

    if-eqz v5, :cond_c

    iget-boolean v5, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnviewedReceivedSnaps:Z

    if-nez v5, :cond_c

    iget-boolean v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHasUnreleasedReceivedChats:Z

    if-nez v0, :cond_c

    add-int/lit8 v0, v3, 0x1

    :goto_6
    move v3, v0

    goto :goto_5

    :cond_5
    move v1, v6

    .line 226
    goto :goto_1

    :cond_6
    move v2, v6

    .line 227
    goto :goto_2

    :cond_7
    move v4, v6

    .line 228
    goto :goto_3

    :cond_8
    move v3, v6

    .line 230
    goto :goto_4

    .line 234
    :cond_9
    new-instance v0, Laju$a;

    invoke-direct {v0}, Laju$a;-><init>()V

    iput v1, v0, Laju$a;->numWithUnviewedContent:I

    iput v2, v0, Laju$a;->numWithOnlyUnviewedChats:I

    iput v3, v0, Laju$a;->numWithOnlyUnviewedCash:I

    new-instance v1, Laju;

    invoke-direct {v1, v0, v6}, Laju;-><init>(Laju$a;B)V

    .line 235
    iget v2, v1, Laju;->mNumWithUnviewedContent:I

    .line 236
    iget v3, v1, Laju;->mNumWithOnlyUnreadChats:I

    .line 237
    iget v1, v1, Laju;->mNumWithOnlyUnviewedCash:I

    .line 241
    const v0, 0x7f02001a

    .line 242
    if-ne v2, v3, :cond_b

    .line 243
    const v0, 0x7f020019

    .line 247
    :cond_a
    :goto_7
    new-instance v1, Lvn$7;

    invoke-direct {v1, p0, v0, v2}, Lvn$7;-><init>(Lvn;II)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 249
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {v0}, Lajq;->l()I

    move-result v0

    .line 250
    new-instance v1, Lvn$8;

    invoke-direct {v1, p0, v0}, Lvn$8;-><init>(Lvn;I)V

    invoke-static {v1}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 244
    :cond_b
    if-ne v2, v1, :cond_a

    .line 245
    const v0, 0x7f020018

    goto :goto_7

    :cond_c
    move v0, v3

    goto :goto_6
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lvn;->o:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 384
    iget-object v0, p0, Lvn;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 385
    const/4 v0, 0x1

    return v0
.end method
