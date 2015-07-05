.class public Lahc;
.super Lasn;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/StoryGroup$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lahc$3;
    }
.end annotation


# instance fields
.field protected final A:Landroid/view/ViewGroup;

.field public final B:Landroid/widget/TextView;

.field protected final C:Landroid/widget/LinearLayout;

.field public final D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

.field public final E:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
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

.field public final M:Landroid/view/View;

.field protected final N:Landroid/content/Context;

.field public O:Laow;

.field public P:Lahb;

.field public Q:I

.field protected R:Z

.field protected final w:Landroid/widget/LinearLayout;

.field public final x:Landroid/widget/ImageView;

.field public final y:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lbgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbgr",
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
    const v3, 0x7f0a0295

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lasn;-><init>(Lafa;Landroid/view/View;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahc;->R:Z

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lahc;->N:Landroid/content/Context;

    .line 91
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahc;->w:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f0a0296

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lahc;->J:Landroid/widget/FrameLayout;

    .line 93
    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lahc;->x:Landroid/widget/ImageView;

    .line 94
    new-instance v0, Lbgr;

    const v1, 0x7f0a029a

    const v2, 0x7f0a03dc

    invoke-direct {v0, p1, v1, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahc;->y:Lbgr;

    .line 95
    new-instance v0, Lbgr;

    const v1, 0x7f0a029b

    const v2, 0x7f0a03d4

    invoke-direct {v0, p1, v1, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahc;->z:Lbgr;

    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lahc;->A:Landroid/view/ViewGroup;

    .line 97
    const v0, 0x7f0a023c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0a022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahc;->K:Landroid/widget/LinearLayout;

    .line 100
    const v0, 0x7f0a029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    .line 101
    new-instance v0, Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v1, p0, Lahc;->N:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    .line 102
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v0, Lbgr;

    const v1, 0x7f0a02a0

    const v2, 0x7f0a03e3

    invoke-direct {v0, p1, v1, v2}, Lbgr;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lahc;->E:Lbgr;

    .line 105
    const v0, 0x7f0a0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lahc;->F:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0a02a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lahc;->G:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0a0299

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lahc;->H:Landroid/widget/ProgressBar;

    .line 108
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    .line 109
    const v0, 0x7f0a02a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lahc;->L:Landroid/view/View;

    .line 110
    const v0, 0x7f0a02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lahc;->M:Landroid/view/View;

    .line 111
    return-void
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lahc;->O:Laow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahc;->O:Laow;

    iget-object v0, v0, Laow;->a:Landroid/animation/AnimatorSet;

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
.method protected a(Lahb;I)V
    .locals 11
    .param p1    # Lahb;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0c0203

    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    instance-of v0, p1, Lahd;

    if-eqz v0, :cond_8

    .line 200
    check-cast p1, Lahd;

    .line 201
    invoke-virtual {p0, p1}, Lahc;->a(Lahd;)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v7

    instance-of v0, p1, Lagw;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Lwt;->a()Lwt;

    move-result-object v4

    invoke-static {}, Lajx;->aJ()Z

    move-result v8

    iget-object v4, v4, Lwt;->a:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper;->b()Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    move-result-object v4

    sget-object v9, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-eq v4, v9, :cond_0

    sget-object v9, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->ENABLED_FOR_LOW_QUALITY:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne v4, v9, :cond_4

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    move v4, v1

    :goto_2
    if-nez v0, :cond_1

    if-nez v4, :cond_6

    :cond_1
    move v0, v1

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v2

    .line 201
    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    sget-object v0, Lahc$3;->a:[I

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
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v2, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    :goto_5
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget-object v2, p0, Lahc;->N:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lavh;->a(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v1, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->READY:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    goto :goto_5

    :pswitch_2
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v4, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVING:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    iget v4, v7, Lcom/snapchat/android/model/StoryGroup;->mSaveProgress:I

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setSaveProgress(I)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :pswitch_3
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    sget-object v3, Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;->SAVED:Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setAnimationState(Lcom/snapchat/android/ui/ProgressiveSaveButton$AnimationState;)V

    iget-object v0, p0, Lahc;->D:Lcom/snapchat/android/ui/ProgressiveSaveButton;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/ProgressiveSaveButton;->setEnabled(Z)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const v3, 0x7f0c0202

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lahc$1;

    invoke-direct {v1, p0, v7}, Lahc$1;-><init>(Lahc;Lcom/snapchat/android/model/StoryGroup;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 202
    :cond_8
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_c

    .line 203
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 204
    invoke-virtual {p0, p1}, Lahc;->a(Lcom/snapchat/android/model/Friend;)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget-object v0, Lahc$3;->b:[I

    iget-object v6, p1, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v6}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_1

    move v0, v2

    :goto_6
    if-eqz v0, :cond_9

    iget-object v3, p0, Lahc;->B:Landroid/widget/TextView;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    if-eq v0, v3, :cond_a

    :goto_7
    if-eqz v1, :cond_b

    iget-object v0, p0, Lahc;->E:Lbgr;

    invoke-virtual {v0, v10}, Lbgr;->a(I)V

    iget-object v0, p0, Lahc;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    :pswitch_4
    const v0, 0x7f0c004f

    goto :goto_6

    :pswitch_5
    const v0, 0x7f0c00f7

    goto :goto_6

    :pswitch_6
    move v0, v3

    goto :goto_6

    :cond_a
    move v1, v2

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lahc;->E:Lbgr;

    invoke-virtual {v0, p2}, Lbgr;->a(I)V

    iget-object v0, p0, Lahc;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 205
    :cond_c
    instance-of v0, p1, Lajg;

    if-nez v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected feed item type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 204
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lahd;)V
    .locals 6
    .param p1    # Lahd;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 387
    invoke-virtual {p1}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 390
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 391
    if-lez v2, :cond_2

    .line 392
    if-ne v2, v4, :cond_1

    .line 393
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const v1, 0x7f0c0274

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lahc;->B:Landroid/widget/TextView;

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

    .line 398
    :cond_2
    if-lez v1, :cond_4

    .line 399
    if-ne v1, v4, :cond_3

    .line 400
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const v1, 0x7f0c01c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v2, p0, Lahc;->B:Landroid/widget/TextView;

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

    .line 405
    :cond_4
    invoke-virtual {p1}, Lahd;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    iget-object v1, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lahd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_5
    invoke-virtual {p1}, Lahd;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lahd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lahd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :cond_6
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 344
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Lahc;->a(Lcom/snapchat/android/model/StoryCollection;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;Ljava/util/Set;)V
    .locals 7
    .annotation build Lavl;
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

    .line 499
    iget-object v0, p0, Lahc;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lahc;->F:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lahc;->E:Lbgr;

    invoke-virtual {v0, v5}, Lbgr;->a(I)V

    .line 503
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 504
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 506
    const v1, 0x7f02006f

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->i()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-interface {p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->j()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lahc;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 511
    :goto_1
    return-void

    .line 503
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lahc;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-object v0, p0, Lahc;->N:Landroid/content/Context;

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
    iget-object v1, p0, Lahc;->B:Landroid/widget/TextView;

    iget-object v2, p0, Lahc;->N:Landroid/content/Context;

    const v3, 0x7f0c0286

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 509
    :cond_3
    invoke-virtual {p0}, Lahc;->v()V

    invoke-virtual {p0}, Lahc;->w()V

    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    new-instance v1, Lahc$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lahc$2;-><init>(Lahc;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public final a(Lcom/snapchat/android/model/StoryCollection;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/StoryCollection;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 357
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 360
    instance-of v2, p1, Lajo;

    .line 362
    if-eqz v2, :cond_1

    .line 363
    const v0, 0x7f0c027e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c0298

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_0
    :goto_1
    iget-object v1, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/StoryCollection;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c0131

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 372
    :cond_3
    if-nez v2, :cond_4

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c0294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 374
    :cond_4
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryCollection;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0c0295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/model/StoryGroup;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 586
    iget-object v0, p0, Lahc;->P:Lahb;

    instance-of v0, v0, Lahd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahc;->P:Lahb;

    check-cast v0, Lahd;

    invoke-virtual {v0}, Lahd;->d()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 589
    :cond_0
    const-string v0, "StoriesListItemViewHolder"

    const-string v1, "View received changed notification from different model."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 594
    :goto_0
    return-void

    .line 593
    :cond_1
    invoke-virtual {p0}, Lahc;->s()V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lahc;->R:Z

    if-eq v0, p1, :cond_0

    .line 137
    iput-boolean p1, p0, Lahc;->R:Z

    .line 138
    invoke-virtual {p0}, Lahc;->s()V

    .line 140
    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lahc;->P:Lahb;

    instance-of v0, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahc;->P:Lahb;

    check-cast v0, Lcom/snapchat/android/model/Friend;

    iget-boolean v0, v0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lahc;->E:Lbgr;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lbgr;->a(I)V

    .line 169
    :cond_0
    return-void

    .line 167
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lahc;->y:Lbgr;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lbgr;->a(I)V

    .line 173
    invoke-virtual {p0, p1}, Lahc;->f(Z)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lahc;->t()Z

    .line 177
    :cond_0
    return-void

    .line 172
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final f(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f19999a    # 0.6f

    .line 180
    iget-object v3, p0, Lahc;->x:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 181
    invoke-virtual {p0, p1}, Lahc;->g(Z)V

    .line 182
    iget-object v0, p0, Lahc;->F:Landroid/widget/Button;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 183
    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    :cond_1
    move v1, v2

    .line 182
    goto :goto_1
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lahc;->X:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 187
    return-void

    .line 186
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

    .line 114
    invoke-super {p0}, Lasn;->q()V

    .line 115
    iget-object v0, p0, Lahc;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lahc;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lahc;->E:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 118
    iget-object v0, p0, Lahc;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lahc;->F:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lahc;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lahc;->z:Lbgr;

    invoke-virtual {v0, v1}, Lbgr;->a(I)V

    .line 123
    iget-object v0, p0, Lahc;->G:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lahc;->b(I)V

    .line 125
    iget-object v0, p0, Lahc;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lahc;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-boolean v2, p0, Lahc;->R:Z

    .line 128
    iget-object v0, p0, Lahc;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lahc;->P:Lahb;

    instance-of v0, v0, Lahd;

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
    .line 154
    iget-object v1, p0, Lahc;->P:Lahb;

    iget-boolean v0, p0, Lahc;->R:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lahc;->a(Lahb;I)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final t()Z
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lahc;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 432
    :goto_0
    return v0

    .line 428
    :cond_1
    new-instance v0, Laoy;

    iget-object v1, p0, Lahc;->X:Landroid/widget/TextView;

    iget-object v2, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Laoy;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lahc;->O:Laow;

    .line 430
    iget-object v0, p0, Lahc;->O:Laow;

    iget-object v0, v0, Laow;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 432
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final u()Z
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lahc;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 476
    :cond_1
    new-instance v0, Laox;

    iget-object v1, p0, Lahc;->X:Landroid/widget/TextView;

    iget-object v2, p0, Lahc;->B:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Laox;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lahc;->O:Laow;

    .line 478
    iget-object v0, p0, Lahc;->O:Laow;

    iget-object v0, v0, Laow;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 480
    const/4 v0, 0x1

    goto :goto_0
.end method
