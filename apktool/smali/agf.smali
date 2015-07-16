.class public final Lagf;
.super Latm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagf$6;
    }
.end annotation


# instance fields
.field final A:Landroid/view/View;

.field final B:Landroid/widget/Button;

.field final C:Landroid/widget/Button;

.field final D:Landroid/widget/Button;

.field final E:Landroid/view/View;

.field final F:Landroid/view/View;

.field G:I

.field final H:Laga;

.field final I:Landroid/view/View;

.field final J:Landroid/content/Context;

.field final K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

.field final L:Laga$c;

.field final M:Lcom/squareup/otto/Bus;

.field final N:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field final O:Laph;

.field private final P:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Lage;

.field private final X:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field final k:Landroid/widget/RelativeLayout;

.field final l:Landroid/widget/CheckBox;

.field final m:Lcom/snapchat/android/ui/FriendTextsView;

.field final n:Landroid/widget/Button;

.field final o:Landroid/view/View;

.field final p:Landroid/view/View;

.field final q:Landroid/view/View;

.field final r:Landroid/view/ViewGroup;

.field final s:Landroid/widget/ImageView;

.field final t:Landroid/widget/ImageView;

.field final u:Landroid/widget/ImageView;

.field final v:Landroid/view/View;

.field final w:Landroid/view/View;

.field final x:Landroid/view/View;

.field final y:Landroid/view/View;

.field final z:Landroid/view/View;


# direct methods
.method public constructor <init>(Laga;Landroid/view/View;Ljava/util/Set;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lage;Laga$c;Ljavax/inject/Provider;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laga;",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/FriendListProperty;",
            "Lage;",
            "Laga$c;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v10

    invoke-static {}, Laph;->a()Laph;

    move-result-object v11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lagf;-><init>(Laga;Landroid/view/View;Ljava/util/Set;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lage;Laga$c;Ljavax/inject/Provider;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Laph;)V

    .line 134
    return-void
.end method

.method private constructor <init>(Laga;Landroid/view/View;Ljava/util/Set;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/FriendListProperty;Lage;Laga$c;Ljavax/inject/Provider;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;Laph;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laga;",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/FriendListProperty;",
            "Lage;",
            "Laga$c;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            "Laph;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Latm;-><init>(Laga;Landroid/view/View;)V

    .line 148
    iput-object p1, p0, Lagf;->H:Laga;

    .line 149
    iput-object p2, p0, Lagf;->I:Landroid/view/View;

    .line 150
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lagf;->J:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lagf;->P:Ljava/util/Set;

    .line 152
    iput-object p4, p0, Lagf;->Q:Ljava/util/Set;

    .line 153
    iput-object p5, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    .line 154
    iput-object p6, p0, Lagf;->W:Lage;

    .line 155
    iput-object p7, p0, Lagf;->L:Laga$c;

    .line 156
    iput-object p8, p0, Lagf;->X:Ljavax/inject/Provider;

    .line 159
    const v0, 0x7f0a0042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    .line 160
    const v0, 0x7f0a0047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lagf;->n:Landroid/widget/Button;

    .line 161
    const v0, 0x7f0a0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lagf;->l:Landroid/widget/CheckBox;

    .line 162
    const v0, 0x7f0a0054

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FriendTextsView;

    iput-object v0, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    .line 163
    const v0, 0x7f0a0046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->o:Landroid/view/View;

    .line 164
    const v0, 0x7f0a0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->p:Landroid/view/View;

    .line 167
    const v0, 0x7f0a004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->q:Landroid/view/View;

    .line 168
    const v0, 0x7f0a0050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lagf;->r:Landroid/view/ViewGroup;

    .line 169
    const v0, 0x7f0a0051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lagf;->s:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0a0052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lagf;->t:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0a0053

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lagf;->u:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0a004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->v:Landroid/view/View;

    .line 175
    const v0, 0x7f0a004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->w:Landroid/view/View;

    .line 176
    const v0, 0x7f0a004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->y:Landroid/view/View;

    .line 177
    const v0, 0x7f0a004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->x:Landroid/view/View;

    .line 180
    const v0, 0x7f0a003a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->z:Landroid/view/View;

    .line 181
    const v0, 0x7f0a0039

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->A:Landroid/view/View;

    .line 182
    const v0, 0x7f0a003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lagf;->B:Landroid/widget/Button;

    .line 183
    const v0, 0x7f0a003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lagf;->C:Landroid/widget/Button;

    .line 184
    const v0, 0x7f0a0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lagf;->D:Landroid/widget/Button;

    .line 185
    const v0, 0x7f0a003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->E:Landroid/view/View;

    .line 186
    const v0, 0x7f0a0041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lagf;->F:Landroid/view/View;

    .line 188
    iput-object p9, p0, Lagf;->M:Lcom/squareup/otto/Bus;

    .line 189
    iput-object p10, p0, Lagf;->N:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 190
    iput-object p11, p0, Lagf;->O:Laph;

    .line 191
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lagf$1;

    invoke-direct {v1, p0, p1}, Lagf$1;-><init>(Lagf;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 243
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 246
    return-void
.end method

.method static b(Lcom/snapchat/android/model/Friend;)Z
    .locals 2
    .param p0    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILaga$a;Ljava/util/Set;Lbgy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/model/Friend;",
            "III",
            "Laga$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbgy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0, p2}, Lagf;->d(Lcom/snapchat/android/model/Friend;)V

    .line 572
    iget-object v1, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->g:Z

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    move v2, p7

    .line 583
    :goto_0
    iget-object v1, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->l:Z

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lagf;->r:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 585
    iget-object v1, p0, Lagf;->r:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 587
    new-instance v1, Lagf$14;

    move-object/from16 v0, p10

    invoke-direct {v1, p0, v0, p2}, Lagf$14;-><init>(Lagf;Lbgy;Lcom/snapchat/android/model/Friend;)V

    invoke-static {v1}, Lbhp;->b(Ljava/lang/Runnable;)V

    .line 593
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Lbgy;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 597
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/lit8 v1, v1, 0x14

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 598
    const-string v3, "profile_addedme_ghost%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 599
    iget-object v3, p0, Lagf;->J:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    iget-object v5, p0, Lagf;->J:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 601
    iget-object v3, p0, Lagf;->s:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 605
    iget-object v1, p0, Lagf;->s:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v1, p0, Lagf;->t:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object v1, p0, Lagf;->u:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "friends profile images - Animation starts for friend: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v1

    if-nez v1, :cond_6

    .line 629
    invoke-virtual {p0}, Lagf;->v()V

    invoke-virtual {p0}, Lagf;->w()V

    iget-object v1, p0, Lagf;->l:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lagf;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v1, p0, Lagf;->l:Landroid/widget/CheckBox;

    iget-object v2, p2, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lagf;->l:Landroid/widget/CheckBox;

    new-instance v2, Lagf$2;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, p2, v0, p8}, Lagf$2;-><init>(Lagf;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Laga$a;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    :goto_2
    iget-object v1, p0, Lagf;->n:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    return-void

    .line 574
    :cond_2
    invoke-interface {p8, p2}, Laga$a;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 576
    const p7, 0x7f02017f

    .line 577
    iget-object v1, p0, Lagf;->u:Landroid/widget/ImageView;

    const v2, 0x7f020198

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move v2, p7

    goto/16 :goto_0

    .line 579
    :cond_3
    iget-object v1, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 580
    iget-object v1, p0, Lagf;->u:Landroid/widget/ImageView;

    const v2, 0x7f020197

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move v2, p7

    goto/16 :goto_0

    .line 609
    :cond_4
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 610
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 611
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 612
    const/16 v1, 0xc8

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 615
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 616
    iget-object v1, p0, Lagf;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 617
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 620
    iget-object v1, p0, Lagf;->s:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lagf;->t:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 622
    iget-object v1, p0, Lagf;->u:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 631
    :cond_6
    iget-object v1, p0, Lagf;->l:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lagf;->a(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {p0, p2}, Lagf;->c(Lcom/snapchat/android/model/Friend;)V

    iget-object v1, p0, Lagf;->B:Landroid/widget/Button;

    new-instance v3, Lagf$3;

    invoke-direct {v3, p0, p2}, Lagf$3;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lagf;->C:Landroid/widget/Button;

    new-instance v3, Lagf$4;

    invoke-direct {v3, p0, p2, p1}, Lagf$4;-><init>(Lagf;Lcom/snapchat/android/model/Friend;I)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lagf;->D:Landroid/widget/Button;

    new-instance v3, Lagf$5;

    invoke-direct {v3, p0, p2}, Lagf$5;-><init>(Lagf;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p3}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, p4}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v3}, Lagf;->b(Z)V

    if-nez v3, :cond_7

    if-nez v1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lagf;->a(Ljava/lang/Runnable;)V

    :cond_7
    invoke-interface {p8}, Laga$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v3

    invoke-virtual {p0, p2}, Lagf;->e(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v4

    invoke-interface {p8}, Laga$a;->r_()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lagf;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    goto/16 :goto_2
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lagf;->P:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 250
    iget-object v4, p0, Lagf;->E:Landroid/view/View;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lagf;->B:Landroid/widget/Button;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    return-void

    :cond_0
    move v0, v2

    .line 250
    goto :goto_0

    :cond_1
    move v2, v1

    .line 251
    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move p2, v0

    .line 198
    :cond_0
    iget-object v1, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->h:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 199
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->t()Ljava/lang/String;

    move-result-object v4

    .line 200
    iget-object v5, p0, Lagf;->U:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v5, p0, Lagf;->U:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    if-eqz p2, :cond_3

    .line 204
    iget-object v1, p0, Lagf;->v:Landroid/view/View;

    iget-object v4, p0, Lagf;->p:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lagf;->a(Landroid/view/View;Landroid/view/View;)V

    .line 211
    :goto_2
    invoke-static {p1}, Lagf;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v1, v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->c:Z

    if-eqz v1, :cond_4

    .line 212
    :goto_3
    iget-object v1, p0, Lagf;->o:Landroid/view/View;

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    return-void

    :cond_1
    move v1, v0

    .line 198
    goto :goto_0

    :cond_2
    move v1, v3

    .line 201
    goto :goto_1

    .line 207
    :cond_3
    iget-object v1, p0, Lagf;->p:Landroid/view/View;

    iget-object v4, p0, Lagf;->v:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lagf;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_2

    :cond_4
    move v2, v0

    .line 211
    goto :goto_3

    :cond_5
    move v3, v0

    .line 212
    goto :goto_4
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const-wide/16 v8, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 298
    if-eqz p1, :cond_0

    .line 299
    invoke-static {p1}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 308
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 297
    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lagf;->k:Landroid/widget/RelativeLayout;

    const-string v3, "translationX"

    new-array v4, v1, [F

    aput v5, v4, v2

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    new-instance v3, Lagf$7;

    invoke-direct {v3, p0, p1}, Lagf$7;-><init>(Lagf;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lagf;->z:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lagf;->A:Landroid/view/View;

    const-string v5, "translationX"

    new-array v6, v1, [F

    int-to-float v7, v3

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lagf;->z:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v1, [F

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v7, v2

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v0, v6, v2

    aput-object v4, v6, v1

    const/4 v0, 0x2

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lagf;->B:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 256
    iget-object v0, p0, Lagf;->C:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 257
    iget-object v0, p0, Lagf;->D:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 258
    return-void
.end method

.method public final c(Lcom/snapchat/android/model/Friend;)V
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v4, 0x7f0a003e

    const v1, 0x7f0a003b

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 266
    iget-object v0, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->i:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lagf;->I:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lagf;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->j:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lagf;->I:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->k:Z

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lagf;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_2
    iget-object v0, p0, Lagf;->Q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 278
    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lagf;->C:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lagf;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lagf;->F:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_3
    iget-object v0, p0, Lagf;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    invoke-static {p1}, Lagf;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lblo$a;

    sget-object v1, Lblo$a;->UNKNOWN:Lblo$a;

    if-eq v0, v1, :cond_5

    .line 286
    :cond_4
    iget-object v0, p0, Lagf;->C:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lagf;->D:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lagf;->C:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lagf;->D:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d(Lcom/snapchat/android/model/Friend;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    iget-object v2, p0, Lagf;->W:Lage;

    invoke-virtual {v2, p1}, Lage;->a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FriendTextsView;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lagf;->W:Lage;

    iget-object v2, p0, Lagf;->L:Laga$c;

    invoke-virtual {v2, p1}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lage;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    .line 360
    iget-object v2, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryText(Ljava/lang/CharSequence;)V

    .line 363
    sget-object v0, Lagf$6;->a:[I

    iget-object v2, p0, Lagf;->K:Lcom/snapchat/android/fragments/addfriends/FriendListProperty;

    iget-object v2, v2, Lcom/snapchat/android/fragments/addfriends/FriendListProperty;->a:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 377
    iget-object v0, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FriendTextsView;->a(Z)V

    .line 381
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lagf;->L:Laga$c;

    invoke-virtual {v0, p1}, Laga$c;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v2, p0, Lagf;->L:Laga$c;

    iget-object v0, v2, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, v2, Laga$c;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Laga$c;->c:Z

    iput-boolean v1, v2, Laga$c;->c:Z

    .line 368
    :goto_1
    iget-object v1, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/FriendTextsView;->a(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 367
    goto :goto_1

    .line 370
    :cond_1
    iget-object v2, p0, Lagf;->L:Laga$c;

    iget-object v0, v2, Laga$c;->b:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    iget-object v0, v2, Laga$c;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v2, Laga$c;->d:Z

    iput-boolean v1, v2, Laga$c;->d:Z

    move v1, v0

    .line 371
    :cond_2
    iget-object v0, p0, Lagf;->m:Lcom/snapchat/android/ui/FriendTextsView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FriendTextsView;->b(Z)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final e(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
    .locals 2

    .prologue
    .line 754
    sget-object v0, Lagf$6;->b:[I

    iget-object v1, p0, Lagf;->H:Laga;

    invoke-virtual {v1}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 760
    iget-object v0, p0, Lagf;->X:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 761
    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v0, p1}, Lakp;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 763
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 768
    :goto_0
    return-object v0

    .line 756
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_BY_NEARBY:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 758
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {v0, p1}, Lakp;->c(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 768
    :cond_1
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
