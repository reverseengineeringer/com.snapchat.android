.class public Latm;
.super Latn;
.source "SourceFile"

# interfaces
.implements Lqg$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latm$1;,
        Latm$a;
    }
.end annotation


# instance fields
.field final R:Laga;

.field protected final S:Landroid/widget/CheckBox;

.field protected final T:Landroid/widget/ProgressBar;

.field public final U:Landroid/widget/TextView;

.field private k:Z

.field private final l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>(Laga;Landroid/view/View;)V
    .locals 6
    .param p1    # Laga;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 60
    const v0, 0x7f0a0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v0, 0x7f0a004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v0, 0x7f0a0045

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Latm;-><init>(Laga;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Laga;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Laga;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 68
    const v0, 0x7f0a0151

    invoke-direct {p0, p2, v0}, Latn;-><init>(Landroid/view/View;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Latm;->k:Z

    .line 69
    iput-object p1, p0, Latm;->R:Laga;

    .line 70
    iput-object p3, p0, Latm;->S:Landroid/widget/CheckBox;

    .line 71
    iput-object p4, p0, Latm;->T:Landroid/widget/ProgressBar;

    .line 72
    iput-object p5, p0, Latm;->U:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Latm;->l:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 74
    return-void
.end method


# virtual methods
.method public final a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    invoke-static {v0, v1}, Lauk;->f(Ljava/lang/String;Lakp;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v7

    :goto_0
    iget-object v1, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v8, p0, Latm;->S:Landroid/widget/CheckBox;

    new-instance v0, Latm$a;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Latm$a;-><init>(Latm;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    const/4 v1, -0x1

    iput v1, v0, Latm$a;->a:I

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Lauj;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object p5

    :cond_1
    iget-object v0, p5, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v1, Latm$1;->b:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend$SuggestState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v6

    .line 194
    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v6, v6}, Latm;->a(ZZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v7, v6}, Latm;->a(ZZ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v6, v6}, Latm;->a(ZZ)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v6, v0}, Latm;->a(ZZ)V

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

.method public final a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Latm;->R:Laga;

    invoke-virtual {v0}, Laga;->a()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v8

    .line 159
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 160
    :goto_0
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v2

    .line 161
    :goto_1
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v4, v2

    .line 162
    :goto_2
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v5, v2

    .line 163
    :goto_3
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v2

    .line 164
    :goto_4
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v7, v2

    .line 165
    :goto_5
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    :goto_6
    sget-object v0, Latm$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_7
    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v3, v0

    goto :goto_1

    .line 161
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_2

    .line 162
    :cond_3
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_3

    .line 163
    :cond_4
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v6, v0

    goto :goto_4

    .line 164
    :cond_5
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_5

    .line 165
    :cond_6
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v8, v0}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_6

    .line 168
    :pswitch_0
    new-instance v0, Lkn;

    invoke-direct {v0}, Lkn;-><init>()V

    int-to-long v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lkn;->charCount:Ljava/lang/Long;

    int-to-long v6, p3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lkn;->keystrokeCount:Ljava/lang/Long;

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkn;->addedMeSearchCount:Ljava/lang/Long;

    int-to-long v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkn;->addressBookSearchCount:Ljava/lang/Long;

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkn;->myFriendSearchCount:Ljava/lang/Long;

    int-to-long v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkn;->usernameSearchCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_7

    .line 175
    :pswitch_1
    new-instance v0, Ljb;

    invoke-direct {v0}, Ljb;-><init>()V

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljb;->charCount:Ljava/lang/Long;

    int-to-long v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljb;->keystrokeCount:Ljava/lang/Long;

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljb;->snapchatterCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljb;->nonSnapchatterCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_7

    .line 180
    :pswitch_2
    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljr;->charCount:Ljava/lang/Long;

    int-to-long v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljr;->keystrokeCount:Ljava/lang/Long;

    int-to-long v4, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljr;->snapchatterCount:Ljava/lang/Long;

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ljr;->nonSnapchatterCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_7

    .line 185
    :pswitch_3
    new-instance v0, Lkb;

    invoke-direct {v0}, Lkb;-><init>()V

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkb;->charCount:Ljava/lang/Long;

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkb;->keystrokeCount:Ljava/lang/Long;

    int-to-long v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkb;->friendSearchCount:Ljava/lang/Long;

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto/16 :goto_7

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lcom/snapchat/android/model/FriendAction;ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    if-nez p2, :cond_0

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Latm;->R:Laga;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Latm;->R:Laga;

    iget-object v1, p0, Latm;->R:Laga;

    invoke-virtual {v1}, Laga;->e()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Laga;->b(Lcom/snapchat/android/model/FriendAction;Z)V

    .line 283
    :cond_1
    sget-object v0, Latm$1;->c:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Latm;->a(ZZ)V

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, v2, v2}, Latm;->a(ZZ)V

    goto :goto_0

    .line 283
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

    .line 255
    if-eqz p1, :cond_2

    move v0, v1

    .line 263
    :goto_0
    iget-object v3, p0, Latm;->S:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 265
    iget-object v4, p0, Latm;->S:Landroid/widget/CheckBox;

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 266
    iget-object v3, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 269
    :cond_0
    if-eqz p1, :cond_5

    .line 270
    :goto_2
    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 271
    :cond_1
    return-void

    .line 257
    :cond_2
    iget-boolean v0, p0, Latm;->k:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 258
    goto :goto_0

    :cond_3
    move v0, v2

    .line 260
    goto :goto_0

    :cond_4
    move v3, v2

    .line 265
    goto :goto_1

    :cond_5
    move v2, v1

    .line 269
    goto :goto_2
.end method

.method public q()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 77
    iget-object v0, p0, Latm;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Latm;->S:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 85
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Latm;->T:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    return-void
.end method
