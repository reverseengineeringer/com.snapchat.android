.class public Lnet/hockeyapp/android/views/FeedbackMessageView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lnet/hockeyapp/android/views/AttachmentListView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;-><init>(Landroid/content/Context;B)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v4, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->e:Z

    .line 68
    invoke-virtual {p0, v4}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setOrientation(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setGravity(I)V

    const v0, -0x333334

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/16 v1, 0x3001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 71
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1, v5, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 72
    new-instance v0, Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-direct {v0, p1}, Lnet/hockeyapp/android/views/AttachmentListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->d:Lnet/hockeyapp/android/views/AttachmentListView;

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->d:Lnet/hockeyapp/android/views/AttachmentListView;

    const/16 v1, 0x3004

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/views/AttachmentListView;->setId(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->d:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/views/AttachmentListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->d:Lnet/hockeyapp/android/views/AttachmentListView;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method private setAuthorLaberColor(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    :cond_0
    return-void
.end method

.method private setDateLaberColor(I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    :cond_0
    return-void
.end method

.method private setMessageLaberColor(I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public setAuthorLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setDateLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setFeedbackMessageViewBgAndTextColor(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const v1, -0x333334

    .line 203
    if-nez p1, :cond_1

    .line 204
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 205
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setAuthorLaberColor(I)V

    .line 206
    invoke-direct {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setDateLaberColor(I)V

    .line 213
    :cond_0
    :goto_0
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setMessageLaberColor(I)V

    .line 214
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setBackgroundColor(I)V

    .line 209
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setAuthorLaberColor(I)V

    .line 210
    invoke-direct {p0, v1}, Lnet/hockeyapp/android/views/FeedbackMessageView;->setDateLaberColor(I)V

    goto :goto_0
.end method

.method public setMessageLabelText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackMessageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    return-void
.end method
