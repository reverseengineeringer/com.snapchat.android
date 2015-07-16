.class public Lahz;
.super Latm;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/StoryGroup$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahz$3;
    }
.end annotation


# instance fields
.field protected final A:Landroid/view/ViewGroup;

.field public final B:Landroid/widget/TextView;

.field protected final C:Landroid/widget/LinearLayout;

.field public final D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

.field public final E:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field public final F:Landroid/widget/Button;

.field public final G:Landroid/widget/Button;

.field protected final H:Landroid/widget/ProgressBar;

.field protected final I:Landroid/widget/CheckBox;

.field public final J:Landroid/widget/FrameLayout;

.field protected final K:Landroid/widget/LinearLayout;

.field public final L:Landroid/view/View;

.field protected final M:Landroid/content/Context;

.field public N:Laqg;

.field public O:Lahy;

.field public P:I

.field protected Q:Z

.field protected final w:Landroid/widget/LinearLayout;

.field public final x:Landroid/widget/ImageView;

.field public final y:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lbhr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbhr",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const v3, 0x7f0a0296

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Latm;-><init>(Laga;Landroid/view/View;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahz;->Q:Z

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lahz;->M:Landroid/content/Context;

    .line 89
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahz;->w:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lahz;->J:Landroid/widget/FrameLayout;

    .line 91
    const v0, 0x7f0a0298

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lahz;->x:Landroid/widget/ImageView;

    .line 92
    new-instance v0, Lbhr;

    const v1, 0x7f0a029b

    const v2, 0x7f0a03d5

    invoke-direct {v0, p1, v1, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahz;->y:Lbhr;

    .line 93
    new-instance v0, Lbhr;

    const v1, 0x7f0a029c

    const v2, 0x7f0a03cd

    invoke-direct {v0, p1, v1, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahz;->z:Lbhr;

    .line 94
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lahz;->A:Landroid/view/ViewGroup;

    .line 95
    const v0, 0x7f0a023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahz;->K:Landroid/widget/LinearLayout;

    .line 98
    const v0, 0x7f0a02a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    .line 99
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v1, p0, Lahz;->M:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    .line 100
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    new-instance v0, Lbhr;

    const v1, 0x7f0a02a1

    const v2, 0x7f0a03dc

    invoke-direct {v0, p1, v1, v2}, Lbhr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahz;->E:Lbhr;

    .line 103
    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lahz;->F:Landroid/widget/Button;

    .line 104
    const v0, 0x7f0a02a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lahz;->G:Landroid/widget/Button;

    .line 105
    const v0, 0x7f0a029a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lahz;->H:Landroid/widget/ProgressBar;

    .line 106
    const v0, 0x7f0a0049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    .line 107
    const v0, 0x7f0a0295

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lahz;->L:Landroid/view/View;

    .line 108
    return-void
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lahz;->N:Laqg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahz;->N:Laqg;

    iget-object v0, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lahy;I)V
    .locals 10
    .param p1    # Lahy;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0c0203

    const/16 v9, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    instance-of v0, p1, Laia;

    if-eqz v0, :cond_6

    .line 197
    check-cast p1, Laia;

    .line 198
    invoke-virtual {p0, p1}, Lahz;->a(Laia;)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v7

    instance-of v0, p1, Laht;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {}, Lxo;->a()Lxo;

    move-result-object v4

    invoke-static {}, Lakr;->aI()Z

    move-result v8

    iget-object v4, v4, Lxo;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->c()Z

    move-result v4

    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    move v4, v1

    :goto_1
    if-nez v0, :cond_0

    if-nez v4, :cond_4

    :cond_0
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 198
    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    sget-object v0, Lahz$3;->a:[I

    iget-object v4, v7, Lcom/snapchat/android/model/StoryGroup;->mActionState:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryGroup$ActionState;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unhandled action state for story group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v2, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    :goto_4
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v2, p0, Lahz;->M:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lawf;->a(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    goto :goto_4

    :pswitch_2
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v4, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget v4, v7, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setSaveProgress(I)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :pswitch_3
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v3, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVED:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahz;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const v3, 0x7f0c0202

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lahz$1;

    invoke-direct {v1, p0, v7}, Lahz$1;-><init>(Lahz;Lcom/snapchat/android/model/StoryGroup;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 199
    :cond_6
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_a

    .line 200
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 201
    invoke-virtual {p0, p1}, Lahz;->a(Lcom/snapchat/android/model/Friend;)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v0, Lahz$3;->b:[I

    iget-object v6, p1, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_1

    move v0, v2

    :goto_5
    if-eqz v0, :cond_7

    iget-object v3, p0, Lahz;->B:Landroid/widget/TextView;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    if-eq v0, v3, :cond_8

    :goto_6
    if-eqz v1, :cond_9

    iget-object v0, p0, Lahz;->E:Lbhr;

    invoke-virtual {v0, v9}, Lbhr;->a(I)V

    iget-object v0, p0, Lahz;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    :pswitch_4
    const v0, 0x7f0c004f

    goto :goto_5

    :pswitch_5
    const v0, 0x7f0c00f7

    goto :goto_5

    :pswitch_6
    move v0, v3

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lahz;->E:Lbhr;

    invoke-virtual {v0, p2}, Lbhr;->a(I)V

    iget-object v0, p0, Lahz;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3

    .line 202
    :cond_a
    instance-of v0, p1, Lakc;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected feed item type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Laia;)V
    .locals 6
    .param p1    # Laia;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 373
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 377
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 378
    if-lez v2, :cond_2

    .line 379
    if-ne v2, v4, :cond_1

    .line 380
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const v1, 0x7f0c0274

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v1, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c027b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    :cond_2
    if-lez v1, :cond_4

    .line 386
    if-ne v1, v4, :cond_3

    .line 387
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const v1, 0x7f0c01c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 389
    :cond_3
    iget-object v2, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c01c9

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 392
    :cond_4
    invoke-virtual {p1}, Laia;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 393
    iget-object v1, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Laia;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 394
    :cond_5
    invoke-virtual {p1}, Laia;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Laia;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Laia;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :cond_6
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 341
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakk;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p0, v0}, Lahz;->a(Lcom/snapchat/android/model/StoryCollection;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V
    .locals 7
    .annotation build Lawj;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 486
    iget-object v0, p0, Lahz;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lahz;->F:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lahz;->E:Lbhr;

    invoke-virtual {v0, v5}, Lbhr;->a(I)V

    .line 490
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 491
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 493
    const v1, 0x7f02006f

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->i()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->j()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lahz;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 498
    :goto_1
    return-void

    .line 490
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahz;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahz;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lahz;->M:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lahz;->B:Landroid/widget/TextView;

    iget-object v2, p0, Lahz;->M:Landroid/content/Context;

    const v3, 0x7f0c0286

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 496
    :cond_3
    invoke-virtual {p0}, Lahz;->v()V

    invoke-virtual {p0}, Lahz;->w()V

    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    new-instance v1, Lahz$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lahz$2;-><init>(Lahz;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 354
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/StoryCollection;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0298

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :goto_0
    iget-object v1, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    return-void

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0130

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0294

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 573
    iget-object v0, p0, Lahz;->O:Lahy;

    instance-of v0, v0, Laia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahz;->O:Lahy;

    check-cast v0, Laia;

    invoke-virtual {v0}, Laia;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0}, Lahz;->s()V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lahz;->Q:Z

    if-eq v0, p1, :cond_0

    .line 134
    iput-boolean p1, p0, Lahz;->Q:Z

    .line 135
    invoke-virtual {p0}, Lahz;->s()V

    .line 137
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lahz;->O:Lahy;

    instance-of v0, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahz;->O:Lahy;

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v1, p0, Lahz;->E:Lbhr;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lbhr;->a(I)V

    .line 166
    :cond_0
    return-void

    .line 164
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lahz;->y:Lbhr;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lbhr;->a(I)V

    .line 170
    invoke-virtual {p0, p1}, Lahz;->f(Z)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lahz;->t()Z

    .line 174
    :cond_0
    return-void

    .line 169
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    .line 177
    iget-object v3, p0, Lahz;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lawf;->a(Landroid/widget/ImageView;F)V

    .line 178
    invoke-virtual {p0, p1}, Lahz;->g(Z)V

    .line 179
    iget-object v0, p0, Lahz;->F:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 180
    return-void

    :cond_0
    move v0, v2

    .line 177
    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    goto :goto_1
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lahz;->V:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 184
    return-void

    .line 183
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public q()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 111
    invoke-super {p0}, Latm;->q()V

    .line 112
    iget-object v0, p0, Lahz;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lahz;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lahz;->E:Lbhr;

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 115
    iget-object v0, p0, Lahz;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lahz;->F:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lahz;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lahz;->z:Lbhr;

    invoke-virtual {v0, v1}, Lbhr;->a(I)V

    .line 120
    iget-object v0, p0, Lahz;->G:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lahz;->b(I)V

    .line 122
    iget-object v0, p0, Lahz;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lahz;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-boolean v2, p0, Lahz;->Q:Z

    .line 125
    iget-object v0, p0, Lahz;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lahz;->O:Lahy;

    instance-of v0, v0, Laia;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 151
    iget-object v1, p0, Lahz;->O:Lahy;

    iget-boolean v0, p0, Lahz;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lahz;->a(Lahy;I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final t()Z
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lahz;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 415
    :cond_1
    new-instance v0, Laqi;

    iget-object v1, p0, Lahz;->V:Landroid/widget/TextView;

    iget-object v2, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Laqi;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lahz;->N:Laqg;

    .line 417
    iget-object v0, p0, Lahz;->N:Laqg;

    iget-object v0, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final u()Z
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lahz;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    .line 463
    :cond_1
    new-instance v0, Laqh;

    iget-object v1, p0, Lahz;->V:Landroid/widget/TextView;

    iget-object v2, p0, Lahz;->B:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Laqh;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lahz;->N:Laqg;

    .line 465
    iget-object v0, p0, Lahz;->N:Laqg;

    iget-object v0, v0, Laqg;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 467
    const/4 v0, 0x1

    goto :goto_0
.end method
