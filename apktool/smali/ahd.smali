.class public final Lahd;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Lbge$a;
.implements Lbqr;
.implements Lbqt$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Lato;",
        ">;",
        "Lbge$a",
        "<",
        "Lahh;",
        ">;",
        "Lbqr",
        "<",
        "Latn;",
        ">;",
        "Lbqt$a;"
    }
.end annotation


# instance fields
.field public final c:Lapb;

.field final d:Laqj;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahh;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lahh;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final h:Landroid/content/Context;

.field private final i:Landroid/view/LayoutInflater;

.field private final j:Lcom/snapchat/android/model/Friend$a;

.field private final k:Lars;

.field private final l:Lahd$a;

.field private m:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lapb;Lcom/snapchat/android/model/Friend$a;Lahd$a;Lars;Laqj;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 77
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lahd;)V

    .line 78
    iput-object p1, p0, Lahd;->h:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lahd;->c:Lapb;

    .line 80
    invoke-interface {p2}, Lapb;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lahd;->e:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lahd;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lahd;->f:Ljava/util/List;

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lahd;->i:Landroid/view/LayoutInflater;

    .line 83
    iput-object p3, p0, Lahd;->j:Lcom/snapchat/android/model/Friend$a;

    .line 84
    iput-object p4, p0, Lahd;->l:Lahd$a;

    .line 85
    iput-object p5, p0, Lahd;->k:Lars;

    .line 86
    iput-object p6, p0, Lahd;->d:Laqj;

    .line 87
    return-void
.end method

.method static synthetic a(Lahd;)Lapb;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lahd;->c:Lapb;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lahd;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lahd;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Latn;

    const v2, 0x7f0a007f

    invoke-direct {v1, v0, v2}, Latn;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public final synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$s;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lahd;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f040097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lato;

    invoke-direct {v1, v0}, Lato;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(J)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 284
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEEDS_LOVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    move v2, v3

    .line 285
    :goto_0
    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahh;

    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/Friend;

    iget-boolean v1, v1, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    if-eqz v0, :cond_2

    .line 286
    :goto_1
    if-ltz v2, :cond_5

    .line 287
    iget-object v0, p0, Lahd;->c:Lapb;

    invoke-interface {v0}, Lapb;->d()Ljava/util/List;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    add-int v5, v2, v3

    if-ltz v5, :cond_4

    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahh;

    iget-object v1, p0, Lahd;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/Friend;

    iget-boolean v6, v1, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v6, :cond_0

    iget-boolean v1, v1, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lahd;->e:Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 285
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    goto :goto_1

    .line 287
    :cond_4
    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    iput-object v0, p0, Lahd;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 290
    :cond_5
    return-void
.end method

.method public final synthetic a(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 9

    .prologue
    const v4, 0x7f02024b

    const/4 v2, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 51
    move-object v0, p1

    check-cast v0, Lato;

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lato;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lahd;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lahh;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Lahh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Latn;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lahd;->l:Lahd$a;

    invoke-interface {v1, v6}, Lahd$a;->a(Lahh;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v5, v0, Latn;->V:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    instance-of v1, v6, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    move-object v1, v6

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lahh;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lahd;->h:Landroid/content/Context;

    const v7, 0x7f0c0172

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Latn;->a(Ljava/lang/String;)V

    :cond_0
    instance-of v1, v6, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_3

    move-object v1, v6

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f02006e

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    sget-object v4, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->name()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Lcom/snapchat/android/model/Friend;

    invoke-virtual/range {v0 .. v5}, Lato;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    :goto_1
    instance-of v1, v6, Lajy;

    if-eqz v1, :cond_c

    instance-of v1, v6, Lajw;

    if-nez v1, :cond_c

    iget-object v1, v0, Lato;->a:Landroid/view/View;

    iget-object v2, p0, Lahd;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lato;->c(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    instance-of v1, v6, Laoy;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lato;->b(I)V

    iget-object v1, v0, Lato;->a:Landroid/view/View;

    new-instance v2, Lahd$2;

    invoke-direct {v2, p0, p2}, Lahd$2;-><init>(Lahd;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    instance-of v1, v6, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_5

    move-object v1, v6

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Latm;->U:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_3
    iget-object v5, v0, Latm;->U:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    move v1, v3

    :goto_4
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    instance-of v1, v6, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_a

    move-object v1, v6

    check-cast v1, Lcom/snapchat/android/model/Friend;

    iget-boolean v2, v1, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    const v1, 0x7f02024a

    :goto_5
    iget-object v2, v0, Lato;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v1, v0, Lato;->k:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lahd;->l:Lahd$a;

    iget-object v2, v0, Lato;->k:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v0, Lato;->k:Landroid/widget/CheckBox;

    invoke-interface {v1, v6}, Lahd$a;->a(Lahh;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lato;->k:Landroid/widget/CheckBox;

    new-instance v3, Lato$1;

    invoke-direct {v3, v0, v1, v6}, Lato$1;-><init>(Lato;Lahd$a;Lahh;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, v0, Lato;->a:Landroid/view/View;

    new-instance v2, Lahd$1;

    invoke-direct {v2, p0, v0}, Lahd$1;-><init>(Lahd;Lato;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    goto :goto_4

    :cond_8
    iget-boolean v1, v1, Lcom/snapchat/android/model/Friend;->mSelectedForNeedsLove:Z

    if-eqz v1, :cond_9

    const v1, 0x7f02024d

    goto :goto_5

    :cond_9
    move v1, v4

    goto :goto_5

    :cond_a
    instance-of v1, v6, Lajy;

    if-eqz v1, :cond_b

    const v1, 0x7f02024e

    goto :goto_5

    :cond_b
    move v1, v4

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lahd;->l:Lahd$a;

    invoke-interface {v1, v6}, Lahd$a;->a(Lahh;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v0, Lato;->a:Landroid/view/View;

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, v0, Lato;->a:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lahh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 101
    iget-object v0, p0, Lahd;->e:Ljava/util/List;

    iput-object v0, p0, Lahd;->f:Ljava/util/List;

    .line 105
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 106
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lahd;->f:Ljava/util/List;

    goto :goto_0
.end method

.method public final b()Landroid/widget/Filter;
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lahd;->m:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lahd;->h:Landroid/content/Context;

    invoke-static {v0}, Lakp;->a(Landroid/content/Context;)Lakp;

    move-result-object v0

    invoke-virtual {v0}, Lakp;->o()Ljava/util/List;

    move-result-object v0

    .line 92
    new-instance v1, Lahf;

    iget-object v2, p0, Lahd;->e:Ljava/util/List;

    iget-object v3, p0, Lahd;->g:Lban;

    invoke-direct {v1, v2, v0, v3, p0}, Lahf;-><init>(Ljava/util/List;Ljava/util/List;Lban;Lbge$a;)V

    iput-object v1, p0, Lahd;->m:Landroid/widget/Filter;

    .line 94
    :cond_0
    iget-object v0, p0, Lahd;->m:Landroid/widget/Filter;

    return-object v0
.end method

.method public final synthetic c(Landroid/support/v7/widget/RecyclerView$s;I)V
    .locals 3

    .prologue
    .line 51
    check-cast p1, Latn;

    iget-object v0, p0, Lahd;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahh;

    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v1

    iget-object v2, p0, Lahd;->h:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latn;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lahd;->h:Landroid/content/Context;

    const v1, 0x7f0c0285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Latn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e(I)J
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lahd;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahh;

    .line 219
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_1

    .line 221
    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 222
    invoke-static {v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v1

    .line 223
    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v1, v2, :cond_0

    .line 224
    invoke-static {v0}, Lcom/snapchat/android/util/FriendSectionizer;->b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    .line 231
    :goto_0
    return-wide v0

    .line 226
    :cond_0
    iget-object v0, p0, Lahd;->h:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0

    .line 228
    :cond_1
    instance-of v0, v0, Laoy;

    if-eqz v0, :cond_2

    .line 229
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iget-object v1, p0, Lahd;->h:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/model/Friend$a;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lahd;->h:Landroid/content/Context;

    const v1, 0x7f0c0285

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
