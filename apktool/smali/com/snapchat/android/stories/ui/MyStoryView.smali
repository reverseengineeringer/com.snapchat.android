.class public Lcom/snapchat/android/stories/ui/MyStoryView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/stories/ui/MyStoryView$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field public b:Landroid/widget/ImageView;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/snapchat/android/model/StorySnapLogbook;

.field private final f:Lapi;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Lcom/squareup/otto/Bus;

.field private i:Lcom/snapchat/android/stories/ui/MyStoryView$a;

.field private j:Z

.field private k:Lapt;

.field private l:Lbki;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbkk;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/widget/ListView;

.field private o:Landroid/view/View;

.field private final p:Landroid/view/View$OnClickListener;

.field private final q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/stories/ui/MyStoryView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/stories/ui/MyStoryView$a;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/model/StorySnapLogbook;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/stories/ui/MyStoryView$a;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    .line 72
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lapi;

    invoke-direct {v4, p1}, Lapi;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/stories/ui/MyStoryView;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/squareup/otto/Bus;Lapi;Lcom/snapchat/android/stories/ui/MyStoryView$a;Landroid/view/LayoutInflater;)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f04007d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a028e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0292

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v1, 0x7f0a0291

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f0a028c

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028f

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a028d

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0a028a

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0a0290

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->b:Landroid/widget/ImageView;

    new-instance v5, Lapt;

    iget-object v9, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Landroid/content/Context;

    invoke-direct {v5, v9}, Lapt;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    const v5, 0x7f0a0293

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->g:Landroid/view/LayoutInflater;

    const v6, 0x7f0400be

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View;

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->b:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v5, v5, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbki;

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Lbki;

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v5, v5, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    iput-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Ljava/util/List;

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Lbki;

    if-nez v5, :cond_1

    const-string v0, "0"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Lbki;

    invoke-virtual {v5}, Lbki;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Lbki;

    invoke-virtual {v1}, Lbki;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Lapu;

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Lbki;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Ljava/util/List;

    invoke-direct {v1, v5, v6}, Lapu;-><init>(Lbki;Ljava/util/List;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v5, Lcom/snapchat/android/stories/ui/MyStoryView$4;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/snapchat/android/stories/ui/MyStoryView$4;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/snapchat/android/stories/ui/MyStoryView$5;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/snapchat/android/stories/ui/MyStoryView$5;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/squareup/otto/Bus;Lapi;Lcom/snapchat/android/stories/ui/MyStoryView$a;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    .line 100
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$1;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->p:Landroid/view/View$OnClickListener;

    .line 150
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$2;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->q:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$3;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->r:Landroid/view/View$OnClickListener;

    .line 82
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Landroid/content/Context;

    .line 83
    iput-object p3, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->h:Lcom/squareup/otto/Bus;

    .line 84
    iput-object p2, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 85
    iput-object p5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Lcom/snapchat/android/stories/ui/MyStoryView$a;

    .line 86
    iput-object p4, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->f:Lapi;

    .line 87
    iput-object p6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->g:Landroid/view/LayoutInflater;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)Lbcg;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 40
    new-instance v1, Lbcg;

    const/4 v0, -0x1

    sget-object v2, Lcom/snapchat/android/stories/ui/MyStoryView;->a:Ljava/lang/String;

    invoke-direct {v1, p0, p1, v0, v2}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lco;->a(Z)V

    iput-wide v4, v1, Lbcg;->duration:J

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    invoke-virtual {v0}, Lapt;->clear()V

    .line 262
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    iput-boolean v0, p1, Lapu;->b:Z

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    invoke-virtual {p1}, Lapu;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapt;->addAll(Ljava/util/Collection;)V

    .line 264
    iget-boolean v0, p1, Lapu;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lapu;->a:Lbki;

    invoke-virtual {v0}, Lbki;->b()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lavb;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p1}, Lapu;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    .line 265
    if-lez v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View;

    const v2, 0x7f0a03e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Landroid/content/Context;

    const v3, 0x7f0c017a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    invoke-virtual {v0}, Lapt;->notifyDataSetChanged()V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 273
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/MyStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    if-eqz v0, :cond_2

    const v0, 0x7f08002e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    return-void

    .line 264
    :cond_1
    iget-object v0, p1, Lapu;->a:Lbki;

    invoke-virtual {v0}, Lbki;->a()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_2
    const v0, 0x7f08005c

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Lapu;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/model/StorySnapLogbook;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Lcom/snapchat/android/model/StorySnapLogbook;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->h:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/stories/ui/MyStoryView$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Lcom/snapchat/android/stories/ui/MyStoryView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/stories/ui/MyStoryView;)Lapi;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->f:Lapi;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/stories/ui/MyStoryView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Z

    return v0
.end method


# virtual methods
.method public getViewersInfoHeight()I
    .locals 1

    .prologue
    .line 298
    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getVisibleViewersListHeight()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 284
    move v0, v1

    move v2, v1

    .line 285
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    invoke-virtual {v3}, Lapt;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lapt;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v4, v5}, Lapt;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 287
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return v2
.end method
