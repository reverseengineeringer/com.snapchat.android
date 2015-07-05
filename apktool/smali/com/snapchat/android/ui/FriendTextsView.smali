.class public Lcom/snapchat/android/ui/FriendTextsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/FriendTextsView$3;,
        Lcom/snapchat/android/ui/FriendTextsView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/snapchat/android/ui/FriendTextsView$a;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FriendTextsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040066

    invoke-static {v0, v1, p0}, Lcom/snapchat/android/ui/FriendTextsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a023c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 51
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FriendTextsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040066

    invoke-static {v0, v1, p0}, Lcom/snapchat/android/ui/FriendTextsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a023c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 51
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FriendTextsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040066

    invoke-static {v0, v1, p0}, Lcom/snapchat/android/ui/FriendTextsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v0, 0x7f0a0151

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0a023c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 51
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    iput-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/FriendTextsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/FriendTextsView;Lcom/snapchat/android/ui/FriendTextsView$a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V

    return-void
.end method

.method private setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V
    .locals 3

    .prologue
    .line 173
    const-string v0, "FriendListItemTextsView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change SecondaryViewStatus FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iput-object p1, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 176
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->b(Z)V

    .line 126
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/FriendTextsView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 96
    :goto_1
    :pswitch_1
    if-eqz p1, :cond_1

    .line 97
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->b:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/FriendTextsView$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/FriendTextsView$1;-><init>(Lcom/snapchat/android/ui/FriendTextsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 121
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/FriendTextsView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return-void

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 140
    :pswitch_2
    if-eqz p1, :cond_0

    .line 141
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->d:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/ui/FriendTextsView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/FriendTextsView$2;-><init>(Lcom/snapchat/android/ui/FriendTextsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 165
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/FriendTextsView;->setSecondaryTextViewStatus(Lcom/snapchat/android/ui/FriendTextsView$a;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 61
    iget v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->d:I

    if-eq v1, v0, :cond_0

    .line 62
    iput v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->d:I

    .line 64
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$3;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/FriendTextsView$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public setSecondaryText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/FriendTextsView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    return-void
.end method
