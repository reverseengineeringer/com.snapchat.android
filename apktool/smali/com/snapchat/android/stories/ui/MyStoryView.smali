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

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/snapchat/android/model/StorySnapLogbook;

.field private final e:Laom;

.field private final f:Landroid/view/LayoutInflater;

.field private final g:Lcom/snapchat/android/stories/ui/MyStoryView$a;

.field private final h:Lcom/squareup/otto/Bus;

.field private i:Z

.field private j:Laou;

.field private k:Lbjh;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjj;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/widget/ListView;

.field private n:Landroid/view/View;

.field private final o:Landroid/view/View$OnClickListener;

.field private final p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/snapchat/android/stories/ui/MyStoryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/stories/ui/MyStoryView;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/stories/ui/MyStoryView;->b:Ljava/lang/String;

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

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/stories/ui/MyStoryView$a;Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/stories/ui/MyStoryView$a;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/model/StorySnapLogbook;
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    .line 69
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v4

    new-instance v5, Laom;

    invoke-direct {v5, p1}, Laom;-><init>(Landroid/content/Context;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/stories/ui/MyStoryView;-><init>(Landroid/content/Context;Lcom/snapchat/android/stories/ui/MyStoryView$a;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/squareup/otto/Bus;Laom;Landroid/view/LayoutInflater;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f04007c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/snapchat/android/stories/ui/MyStoryView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a0290

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a028e

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0292

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v2, 0x7f0a0291

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v2, 0x7f0a028c

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a028f

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a028d

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0a028a

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v9, Laou;

    iget-object v10, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Landroid/content/Context;

    invoke-direct {v9, v10}, Laou;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Laou;

    const v9, 0x7f0a0293

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Laou;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->f:Landroid/view/LayoutInflater;

    const v9, 0x7f0400bc

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/view/View;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapExtra:Lbjh;

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lbjh;

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Lcom/snapchat/android/model/StorySnapLogbook;

    iget-object v0, v0, Lcom/snapchat/android/model/StorySnapLogbook;->mStorySnapNotes:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Ljava/util/List;

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lbjh;

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "0"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lbjh;

    invoke-virtual {v0}, Lbjh;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lbjh;

    invoke-virtual {v0}, Lbjh;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Laov;

    iget-object v2, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->k:Lbjh;

    iget-object v6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->l:Ljava/util/List;

    invoke-direct {v0, v2, v6}, Laov;-><init>(Lbjh;Ljava/util/List;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance v2, Lcom/snapchat/android/stories/ui/MyStoryView$4;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/snapchat/android/stories/ui/MyStoryView$4;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/snapchat/android/stories/ui/MyStoryView$5;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/snapchat/android/stories/ui/MyStoryView$5;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/stories/ui/MyStoryView$a;Lcom/snapchat/android/model/StorySnapLogbook;Lcom/squareup/otto/Bus;Laom;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    .line 96
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$1;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->o:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$2;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->p:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/snapchat/android/stories/ui/MyStoryView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/stories/ui/MyStoryView$3;-><init>(Lcom/snapchat/android/stories/ui/MyStoryView;)V

    iput-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->q:Landroid/view/View$OnClickListener;

    .line 78
    iput-object p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->g:Lcom/snapchat/android/stories/ui/MyStoryView$a;

    .line 80
    iput-object p4, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->h:Lcom/squareup/otto/Bus;

    .line 81
    iput-object p3, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Lcom/snapchat/android/model/StorySnapLogbook;

    .line 82
    iput-object p5, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Laom;

    .line 83
    iput-object p6, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->f:Landroid/view/LayoutInflater;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)Lbbg;
    .locals 7

    .prologue
    .line 40
    new-instance v0, Lbbg;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    sget-object v6, Lcom/snapchat/android/stories/ui/MyStoryView;->a:Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lbbg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZLjava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lbbg;->a(J)Lbbg;

    return-object v0
.end method

.method private a(Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Laou;

    invoke-virtual {v0}, Laou;->clear()V

    .line 262
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    iput-boolean v0, p1, Laov;->b:Z

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Laou;

    invoke-virtual {p1}, Laov;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Laou;->addAll(Ljava/util/Collection;)V

    .line 264
    iget-boolean v0, p1, Laov;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Laov;->a:Lbjh;

    invoke-virtual {v0}, Lbjh;->b()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-virtual {p1}, Laov;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    .line 265
    if-lez v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/view/View;

    const v2, 0x7f0a03e9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->c:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->n:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->j:Laou;

    invoke-virtual {v0}, Laou;->notifyDataSetChanged()V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 273
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/snapchat/android/stories/ui/MyStoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    if-eqz v0, :cond_2

    const v0, 0x7f08002d

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 277
    return-void

    .line 264
    :cond_1
    iget-object v0, p1, Laov;->a:Lbjh;

    invoke-virtual {v0}, Lbjh;->a()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 274
    :cond_2
    const v0, 0x7f08005a

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/stories/ui/MyStoryView;->a(Laov;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/stories/ui/MyStoryView;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/stories/ui/MyStoryView;)Lcom/snapchat/android/model/StorySnapLogbook;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->d:Lcom/snapchat/android/model/StorySnapLogbook;

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
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->g:Lcom/snapchat/android/stories/ui/MyStoryView$a;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/stories/ui/MyStoryView;)Laom;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->e:Laom;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/stories/ui/MyStoryView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->i:Z

    return v0
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/snapchat/android/stories/ui/MyStoryView;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method
