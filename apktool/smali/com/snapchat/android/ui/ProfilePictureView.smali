.class public Lcom/snapchat/android/ui/ProfilePictureView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ProfilePictureView$a;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/animation/AnimatorSet;

.field public f:Z

.field public g:Z

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/snapchat/android/ui/camera/TakeSnapButton;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/ViewGroup;

.field private r:Lcom/snapchat/android/ui/ProfilePictureView$a;

.field private s:Z

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/ProfilePictureView;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 56
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 57
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    .line 58
    iput v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->i:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 56
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 57
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    .line 58
    iput v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->i:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 56
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 57
    iput-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    .line 58
    iput v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    .line 72
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->i:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/ProfilePictureView;)Lcom/snapchat/android/ui/ProfilePictureView$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/ProfilePictureView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    if-eq v0, p1, :cond_0

    .line 200
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    .line 201
    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 203
    :cond_0
    return-void

    .line 201
    :cond_1
    const v0, 0x3e0f5c29    # 0.14f

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    :goto_0
    return-void

    .line 232
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCallback()Lcom/snapchat/android/ui/ProfilePictureView$a;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    return-object v0
.end method

.method public getSnapcodeSvgImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 109
    const v1, 0x7f0a0307

    if-ne v0, v1, :cond_3

    .line 110
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->s:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c01d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c01d6

    new-instance v3, Lcom/snapchat/android/ui/ProfilePictureView$7;

    invoke-direct {v3, p0}, Lcom/snapchat/android/ui/ProfilePictureView$7;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0058

    new-instance v3, Lcom/snapchat/android/ui/ProfilePictureView$6;

    invoke-direct {v3, p0}, Lcom/snapchat/android/ui/ProfilePictureView$6;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 113
    :cond_3
    const v1, 0x7f0a0309

    if-ne v0, v1, :cond_4

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/ProfilePictureView$a;->r()V

    goto :goto_1

    .line 115
    :cond_4
    const v1, 0x7f0a030c

    if-ne v0, v1, :cond_5

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/ProfilePictureView$a;->o()V

    goto :goto_1

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/ProfilePictureView$a;->n()V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 78
    const v0, 0x7f0a0307

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    .line 79
    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    .line 80
    const v0, 0x7f0a030a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->l:Landroid/widget/ProgressBar;

    .line 81
    const v0, 0x7f0a030d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->m:Landroid/widget/ImageButton;

    .line 82
    const v0, 0x7f0a030c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/camera/TakeSnapButton;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->n:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    .line 83
    const v0, 0x7f0a0304

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0a0305

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f0a0306

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0a030b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->q:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f0a0303

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ProfilePictureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->o:Landroid/view/ViewGroup;

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->o:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    new-instance v1, Lasv;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    new-instance v1, Lasv;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->m:Landroid/widget/ImageButton;

    new-instance v1, Lasv;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->m:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lasv;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/snapchat/android/ui/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->n:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public setCallback(Lcom/snapchat/android/ui/ProfilePictureView$a;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->r:Lcom/snapchat/android/ui/ProfilePictureView$a;

    .line 161
    return-void
.end method

.method public setProfilePicturesControlButtonsVisibility(I)V
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    if-eq v0, p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->n:Lcom/snapchat/android/ui/camera/TakeSnapButton;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/camera/TakeSnapButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 217
    iput p1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->t:I

    .line 219
    :cond_0
    return-void
.end method

.method public setSnapcodeSvg(Lfl;)V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x4

    const/4 v6, -0x1

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3fe78d4fdf3b645aL    # 0.736

    mul-double/2addr v2, v4

    double-to-int v1, v2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->o:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/snapchat/android/ui/ProfilePictureView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const v1, 0x3f63d70a    # 0.89f

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->o:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lfl;->a()Landroid/graphics/drawable/PictureDrawable;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/snapchat/android/ui/ProfilePictureView;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    return-void
.end method
