.class public Lasn;
.super Laso;
.source "SourceFile"

# interfaces
.implements Lpp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasn$1;,
        Lasn$a;
    }
.end annotation


# instance fields
.field final S:Lafa;

.field protected final T:Landroid/widget/CheckBox;

.field protected final U:Landroid/widget/ProgressBar;

.field public final V:Landroid/widget/TextView;

.field final W:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private k:Z


# direct methods
.method public constructor <init>(Lafa;Landroid/view/View;)V
    .locals 6
    .param p1    # Lafa;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 51
    const v0, 0x7f0a0047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v0, 0x7f0a0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v0, 0x7f0a0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lasn;-><init>(Lafa;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Lafa;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Lafa;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 59
    const v0, 0x7f0a0151

    invoke-direct {p0, p2, v0}, Laso;-><init>(Landroid/view/View;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasn;->k:Z

    .line 60
    iput-object p1, p0, Lasn;->S:Lafa;

    .line 61
    iput-object p3, p0, Lasn;->T:Landroid/widget/CheckBox;

    .line 62
    iput-object p4, p0, Lasn;->U:Landroid/widget/ProgressBar;

    .line 63
    iput-object p5, p0, Lasn;->V:Landroid/widget/TextView;

    .line 64
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lasn;->W:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 65
    return-void
.end method


# virtual methods
.method public final a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->f(Ljava/lang/String;Lajv;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v7

    :goto_0
    iget-object v1, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v8, p0, Lasn;->T:Landroid/widget/CheckBox;

    new-instance v0, Lasn$a;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lasn$a;-><init>(Lasn;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    const/4 v1, -0x1

    iput v1, v0, Lasn$a;->a:I

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Latl;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object p5

    :cond_1
    iget-object v0, p5, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v1, Lasn$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend$SuggestState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v6

    .line 149
    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v6, v6}, Lasn;->a(ZZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v7, v6}, Lasn;->a(ZZ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v6}, Lasn;->a(ZZ)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v6, v0}, Lasn;->a(ZZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/snapchat/android/model/FriendAction;ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    if-nez p2, :cond_0

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    sget-object v0, Lasn$1;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lasn;->a(ZZ)V

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-virtual {p0, v2, v2}, Lasn;->a(ZZ)V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(ZZ)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 210
    if-eqz p1, :cond_2

    move v0, v1

    .line 218
    :goto_0
    iget-object v3, p0, Lasn;->T:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v4, p0, Lasn;->T:Landroid/widget/CheckBox;

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 221
    iget-object v3, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 224
    :cond_0
    if-eqz p1, :cond_5

    .line 225
    :goto_2
    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    :cond_1
    return-void

    .line 212
    :cond_2
    iget-boolean v0, p0, Lasn;->k:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 213
    goto :goto_0

    :cond_3
    move v0, v2

    .line 215
    goto :goto_0

    :cond_4
    move v3, v2

    .line 220
    goto :goto_1

    :cond_5
    move v2, v1

    .line 224
    goto :goto_2
.end method

.method public q()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 68
    iget-object v0, p0, Lasn;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lasn;->T:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 76
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lasn;->U:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    return-void
.end method
