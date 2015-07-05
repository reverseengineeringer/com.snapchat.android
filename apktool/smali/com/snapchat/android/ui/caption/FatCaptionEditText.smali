.class public Lcom/snapchat/android/ui/caption/FatCaptionEditText;
.super Lcom/snapchat/android/ui/caption/CaptionEditText;
.source "SourceFile"

# interfaces
.implements Laqe$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/CaptionEditText;",
        "Laqe$a",
        "<",
        "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
        ">;"
    }
.end annotation


# instance fields
.field private final A:Landroid/view/GestureDetector;

.field private final B:Landroid/view/ScaleGestureDetector;

.field private C:Z

.field private D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

.field private E:Landroid/text/style/ForegroundColorSpan;

.field protected q:D

.field protected r:D

.field protected s:F

.field protected t:F

.field protected u:D

.field protected v:D

.field protected w:Z

.field protected x:Z

.field public y:Z

.field private z:Laqe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laqe",
            "<",
            "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/CaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Laqe;

    invoke-direct {v0, p0}, Laqe;-><init>(Laqe$a;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Laqe;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    .line 60
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    .line 62
    iput-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    .line 63
    iput-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    .line 65
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    .line 68
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->x:Z

    .line 70
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->C:Z

    .line 75
    iput-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 85
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setLayerType(ILandroid/graphics/Paint;)V

    .line 87
    const v0, 0x240c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setInputType(I)V

    .line 89
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setGravity(I)V

    .line 91
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$1;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Landroid/view/GestureDetector;

    .line 108
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$2;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/view/ScaleGestureDetector;

    .line 134
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$3;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:Landroid/text/TextWatcher;

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    new-instance v0, Lapq;

    invoke-direct {v0}, Lapq;-><init>()V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Lcom/snapchat/android/ui/caption/CaptionColorRange;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    return-object v0
.end method

.method private a(D)V
    .locals 3

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    iget-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:D

    .line 208
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v0, :cond_2

    .line 209
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e()V

    .line 214
    return-void

    .line 207
    :cond_1
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    goto :goto_0

    .line 211
    :cond_2
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    goto :goto_1
.end method

.method private a(Landroid/text/Editable;III)V
    .locals 14

    .prologue
    .line 611
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ForegroundColorSpan;

    .line 613
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 620
    array-length v10, v1

    const/4 v2, 0x0

    move v7, v2

    move/from16 v3, p4

    move/from16 v5, p3

    :goto_0
    if-ge v7, v10, :cond_6

    aget-object v11, v1, v7

    .line 621
    invoke-interface {p1, v11}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 622
    invoke-interface {p1, v11}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 623
    invoke-virtual {v11}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v12

    .line 624
    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    move/from16 v0, p3

    if-gt v6, v0, :cond_0

    move/from16 v0, p4

    if-lt v4, v0, :cond_0

    .line 664
    :goto_1
    return-void

    .line 629
    :cond_0
    const/4 v2, 0x0

    .line 630
    move/from16 v0, p3

    if-ge v6, v0, :cond_1

    move/from16 v0, p3

    if-le v4, v0, :cond_1

    .line 631
    const/4 v2, 0x1

    .line 632
    move/from16 v0, p2

    if-eq v0, v12, :cond_4

    .line 633
    new-instance v13, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p3

    invoke-direct {v13, v12, v6, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_1
    :goto_2
    move/from16 v0, p4

    if-ge v6, v0, :cond_2

    move/from16 v0, p4

    if-le v4, v0, :cond_2

    .line 640
    const/4 v2, 0x1

    .line 641
    move/from16 v0, p2

    if-eq v0, v12, :cond_5

    .line 642
    new-instance v6, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p4

    invoke-direct {v6, v12, v0, v4}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 649
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    :cond_4
    move v5, v6

    .line 635
    goto :goto_2

    :cond_5
    move v3, v4

    .line 644
    goto :goto_3

    .line 653
    :cond_6
    new-instance v1, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    move/from16 v0, p2

    invoke-direct {v1, v0, v5, v3}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 656
    const-string v3, "FatCaptionEditText"

    const-string v4, "removing a color span: %s [%s, %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-interface {p1, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    invoke-interface {p1, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_4

    .line 663
    :cond_7
    invoke-direct {p0, p1, v9}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private a(Landroid/text/Editable;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 592
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 593
    const-string v3, "FatCaptionEditText"

    const-string v4, "adding a new color span: %s [%s, %s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    .line 597
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    iget v4, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    iget v0, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    const/16 v5, 0x22

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 602
    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 603
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;D)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(D)V

    return-void
.end method

.method protected static a(Landroid/text/Editable;)Z
    .locals 3

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 188
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/caption/FatCaptionEditText;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->C:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->C:Z

    return v0
.end method

.method private getDraggableObjectAtPoint$3929eafb()Lcom/snapchat/android/ui/caption/FatCaptionEditText;
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->l:Z

    if-nez v0, :cond_0

    .line 463
    const/4 p0, 0x0

    .line 466
    :cond_0
    return-object p0
.end method

.method private h()V
    .locals 5

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:D

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(D)V

    .line 262
    :goto_0
    return-void

    .line 248
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 249
    const-string v1, ""

    .line 250
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_2
    move-object v1, v0

    .line 255
    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float v1, v2, v1

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    invoke-static {v0, v2}, Lavh;->a(Landroid/util/DisplayMetrics;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0xf

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(D)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method protected final a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 266
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->C:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 270
    :cond_0
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    .line 272
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e()V

    .line 273
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->g()V

    .line 275
    if-nez p1, :cond_1

    .line 276
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 287
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 293
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    .line 299
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f:Z

    .line 300
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d:I

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:Laps;

    invoke-interface {v1}, Laps;->getPreviewCloseButtonBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->B:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 418
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->C:Z

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->A:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 424
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    if-nez v1, :cond_0

    .line 427
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Laqe$c;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 47
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v1, p2, Laqe$c;->g:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_0
    cmpl-float v4, v1, v0

    if-lez v4, :cond_5

    :goto_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-eqz v1, :cond_3

    iget v1, p2, Laqe$c;->a:F

    :goto_2
    iget v4, p2, Laqe$c;->b:F

    invoke-virtual {p1, v1, v4}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    iget-boolean v1, p2, Laqe$c;->i:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v1, v4

    iput v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v8, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    :cond_1
    return v8

    :cond_2
    iget v1, p2, Laqe$c;->c:F

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    goto :goto_2

    :cond_4
    iget v1, p2, Laqe$c;->f:F

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 306
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 307
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(II)V

    .line 309
    return-void
.end method

.method protected final b(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->z:Laqe;

    invoke-virtual {v0, p1}, Laqe;->a(Landroid/view/MotionEvent;)Z

    .line 433
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Laqe$c;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 47
    check-cast p1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getX()F

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleX()F

    move-result v6

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getScaleY()F

    move-result v7

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getRotation()F

    move-result v0

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v9, v8

    move-object v0, p2

    move v5, v3

    move v8, v3

    invoke-virtual/range {v0 .. v9}, Laqe$c;->a(FFZFZFFZF)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    .line 332
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 334
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    if-eqz v0, :cond_0

    .line 335
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    .line 336
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->f()V

    .line 337
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->w:Z

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->g()V

    .line 342
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 343
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 345
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 346
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 347
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 349
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setVisibility(I)V

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->clearFocus()V

    .line 355
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 356
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCursorVisible(Z)V

    .line 358
    if-eqz p1, :cond_4

    .line 359
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    :cond_2
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbbh;

    invoke-direct {v1, v2}, Lbbh;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 369
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d()V

    .line 370
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->o:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    .line 373
    :cond_3
    return-void

    .line 364
    :cond_4
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(II)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->b()V

    .line 379
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c()V

    .line 381
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCursorVisible(Z)V

    .line 383
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d:I

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:Laps;

    invoke-interface {v1}, Laps;->getPreviewCloseButtonBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    .line 384
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 438
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 440
    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v1, v9

    .line 441
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 444
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    div-float/2addr v0, v2

    .line 447
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 448
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 449
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 450
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 451
    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 453
    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v4, v0

    sub-float v7, v2, v3

    add-float/2addr v0, v4

    add-float/2addr v2, v3

    invoke-direct {v5, v6, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget v0, v1, v8

    aget v1, v1, v9

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method protected final e()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v1, :cond_2

    .line 221
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h()V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_0

    .line 225
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->u:D

    double-to-float v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-virtual {p0, v8, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto :goto_0

    .line 229
    :cond_2
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h()V

    goto :goto_0

    .line 232
    :cond_3
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getTextSize()F

    move-result v1

    float-to-double v4, v1

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v1, v2, v6

    if-lez v1, :cond_0

    .line 233
    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->v:D

    double-to-float v1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    invoke-virtual {p0, v8, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 324
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:F

    .line 325
    iput v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:F

    .line 326
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCaptionPositionX(F)V

    .line 327
    return-void
.end method

.method protected final g()V
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 525
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 526
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->invalidate()V

    .line 527
    return-void

    :cond_0
    move v0, v1

    .line 525
    goto :goto_0
.end method

.method protected getAnalyticsDetails()Lapo;
    .locals 5

    .prologue
    .line 710
    new-instance v1, Lapo;

    sget-object v2, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->FAT_CAPTION_TYPE:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m:Z

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getColorSpans()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->x:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lapo;-><init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCaptionEditPosition()I
    .locals 4

    .prologue
    .line 313
    iget v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d:I

    iget-object v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:Laps;

    invoke-interface {v3}, Laps;->getPreviewCloseButtonBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCloseAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 395
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$a;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText$a;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V

    .line 398
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$b;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    float-to-int v3, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v1, v1

    iget v5, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->n:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIII)V

    goto :goto_0
.end method

.method protected getColorSpans()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 682
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 683
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v2, v1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 684
    const-string v1, "FatCaptionEditText"

    const-string v3, "Total colors : %s"

    new-array v4, v12, [Ljava/lang/Object;

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v1, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    array-length v6, v0

    move v1, v2

    move v3, v2

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v0, v1

    .line 688
    const-string v8, "FatCaptionEditText"

    const-string v9, "[%s] color : %s (%s, %s)"

    const/4 v4, 0x4

    new-array v10, v4, [Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v12

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v9, v10}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    new-instance v3, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v8

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-direct {v3, v8, v9, v7}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 694
    :cond_0
    return-object v5
.end method

.method public final bridge synthetic getDraggableObjectAtPoint$73035ef()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->l:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method protected getMaxFontSize()D
    .locals 2

    .prologue
    .line 404
    iget-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:D

    return-wide v0
.end method

.method protected getOpenAnimation()Landroid/view/animation/Animation;
    .locals 6

    .prologue
    .line 389
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$b;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionX()F

    move-result v1

    float-to-int v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getCaptionEditPosition()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/caption/CaptionEditText$b;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIII)V

    return-object v0
.end method

.method public setColor(I)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 530
    iput-boolean v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->y:Z

    .line 532
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionStart()I

    move-result v1

    .line 533
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getSelectionEnd()I

    move-result v0

    .line 535
    if-eq v1, v3, :cond_2

    if-eq v0, v3, :cond_2

    .line 537
    if-ne v1, v0, :cond_3

    const/4 v3, 0x1

    .line 538
    :goto_0
    if-eqz v3, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    move v1, v2

    .line 543
    :cond_0
    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    iget v4, v4, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    iget v4, v4, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    if-ne v4, v0, :cond_5

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    iget v4, v4, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    if-eq v4, p1, :cond_5

    .line 549
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    if-eqz v2, :cond_1

    .line 550
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v2, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 552
    :cond_1
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    .line 553
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 554
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->E:Landroid/text/style/ForegroundColorSpan;

    const/16 v5, 0x22

    invoke-interface {v2, v4, v1, v0, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 555
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v2, v4}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 557
    if-eqz v3, :cond_4

    .line 558
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 586
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v3, v2

    .line 537
    goto :goto_0

    .line 560
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(II)V

    goto :goto_1

    .line 565
    :cond_5
    iget-object v4, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    if-nez v4, :cond_6

    .line 573
    if-eqz v3, :cond_7

    .line 574
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clearSpans()V

    .line 575
    new-instance v3, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v3, p1, v2, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 577
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;Ljava/util/List;)V

    .line 578
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(I)V

    .line 584
    :cond_6
    :goto_2
    new-instance v2, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    invoke-direct {v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/CaptionColorRange;-><init>(III)V

    iput-object v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->D:Lcom/snapchat/android/ui/caption/CaptionColorRange;

    goto :goto_1

    .line 580
    :cond_7
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Landroid/text/Editable;III)V

    .line 581
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setSelection(II)V

    goto :goto_2
.end method

.method protected setColorSpans(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/caption/CaptionColorRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;

    .line 670
    iget v3, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 671
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->a:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->b:I

    iget v0, v0, Lcom/snapchat/android/ui/caption/CaptionColorRange;->c:I

    const/16 v5, 0x22

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 677
    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 678
    return-void
.end method

.method protected setMaxFontSize(D)V
    .locals 1

    .prologue
    .line 408
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:D

    .line 409
    return-void
.end method

.method protected setMinFontSize(D)V
    .locals 1

    .prologue
    .line 412
    iput-wide p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    .line 413
    return-void
.end method
