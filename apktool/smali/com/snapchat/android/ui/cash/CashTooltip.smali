.class public Lcom/snapchat/android/ui/cash/CashTooltip;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/cash/CashTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    const v1, 0x7f040025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->a:Landroid/content/SharedPreferences;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->b:Z

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->setAlpha(F)V

    .line 42
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_TOOLTIP_DISPLAY_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/ui/cash/CashTooltip;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_TOOLTIP_DISPLAY_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->b:Z

    if-ne p1, v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/cash/CashTooltip;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-boolean p1, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->b:Z

    .line 69
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/cash/CashTooltip;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/snapchat/android/ui/cash/CashTooltip$1;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/cash/CashTooltip$1;-><init>(Lcom/snapchat/android/ui/cash/CashTooltip;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_TOOLTIP_DISPLAY_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/snapchat/android/ui/cash/CashTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->CASH_TOOLTIP_DISPLAY_COUNT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
