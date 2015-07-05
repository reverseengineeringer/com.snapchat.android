.class public Lcom/snapchat/android/ui/here/HereTooltip;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field private b:Z

.field private c:J

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/here/HereTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v1, 0x7f04006a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    const v0, 0x7f0a00f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->d:Landroid/widget/TextView;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:J

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->setAlpha(F)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 8
    .param p1    # Lcom/snapchat/android/model/chat/ChatConversation;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-eqz p2, :cond_6

    iget-boolean v2, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mIsRecipientPresent:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->getWeSupportHere()Z

    move-result v2

    iget-boolean v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 64
    :goto_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->b:Z

    if-eq v1, v0, :cond_1

    .line 65
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HereTooltip;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->getWeSupportHere()Z

    move-result v1

    iget-boolean v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mRecipientSupportsHere:Z

    if-nez v1, :cond_7

    const v1, 0x7f0c018a

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Z)V

    .line 68
    :cond_1
    return-void

    .line 62
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->TIMES_DISPLAYED_HERE_TOOLTIP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1b58

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    move v2, v0

    :goto_3
    const/4 v4, 0x3

    if-lt v3, v4, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    .line 65
    :cond_7
    if-nez v3, :cond_8

    const v1, 0x7f0c0189

    goto :goto_2

    :cond_8
    const v1, 0x7f0c014d

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->b:Z

    if-ne p1, v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->b:Z

    .line 141
    iput-wide v4, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:J

    .line 143
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 145
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 146
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 148
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 151
    if-eqz p1, :cond_1

    .line 152
    new-instance v0, Lcom/snapchat/android/ui/here/HereTooltip$1;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/here/HereTooltip$1;-><init>(Lcom/snapchat/android/ui/here/HereTooltip;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->TIMES_DISPLAYED_HERE_TOOLTIP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->TIMES_DISPLAYED_HERE_TOOLTIP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 172
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getWeSupportHere()Z
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lasu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCancelInChatSnapTime(J)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:J

    .line 87
    return-void
.end method
