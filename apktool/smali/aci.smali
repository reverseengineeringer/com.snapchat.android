.class public final Laci;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field public a:Z

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Laci;->a:Z

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laci;->b:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 36
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 37
    const v0, 0x7f0a01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move v1, v2

    .line 38
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 41
    iget-boolean v4, p0, Laci;->a:Z

    if-nez v4, :cond_0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    :cond_0
    const-string v4, "["

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 47
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 48
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xffff01

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 50
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 52
    invoke-interface {p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 53
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const v1, 0x3f4ccccd    # 0.8f

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void

    .line 56
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Laci;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f040048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
