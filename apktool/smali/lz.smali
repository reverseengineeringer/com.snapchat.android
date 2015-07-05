.class public final Llz;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 28
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Llz;->a:Landroid/view/LayoutInflater;

    .line 29
    return-void
.end method


# virtual methods
.method public final bindView$4693bf34(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 38
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->STATUS_CODE:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 39
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 41
    :goto_0
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->TIMESTAMP:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "[hh:mm:ss]"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 44
    const v0, 0x7f0a0259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f0a0258

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->PATH:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->DURATION:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 52
    const v0, 0x7f0a025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->METHOD:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    const v0, 0x7f0a0257

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    if-eqz v1, :cond_1

    const v1, -0xff4500

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 60
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->STATUS_LINE:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    const v0, 0x7f0a025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->SENT_BYTES:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 65
    const v0, 0x7f0a0255

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2191"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->RECEIVED_BYTES:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->getColumnNumber()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 69
    const v0, 0x7f0a0256

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2193"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 58
    :cond_1
    const/high16 v1, -0x10000

    goto/16 :goto_1
.end method

.method public final newView$4b8874c5(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Llz;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f04006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
