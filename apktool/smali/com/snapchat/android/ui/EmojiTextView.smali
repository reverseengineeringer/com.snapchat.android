.class public Lcom/snapchat/android/ui/EmojiTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 26
    sput-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->WHITE_MEDIUM_STAR:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->HEAVY_BLACK_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMIRKING_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->FLUSHED_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f020119

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->CLAPPING_HANDS_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f020117

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->FIRE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f020118

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->YELLOW_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f020120

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-virtual {v1}, Lcom/snapchat/android/util/emoji/Emoji;->getUnicode()I

    move-result v1

    const v2, 0x7f02011a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/text/Spannable;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 64
    const-class v0, Lbbi;

    invoke-interface {p1, v2, v3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbbi;

    move v1, v2

    .line 65
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 66
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    :goto_1
    if-ge v2, v3, :cond_2

    .line 71
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 72
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 73
    sget-object v4, Lcom/snapchat/android/ui/EmojiTextView;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 74
    if-lez v0, :cond_1

    .line 75
    new-instance v4, Lbbi;

    invoke-direct {v4, p0, v0, p2}, Lbbi;-><init>(Landroid/content/Context;II)V

    add-int v0, v2, v1

    const/16 v5, 0x21

    invoke-interface {p1, v4, v2, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 70
    :cond_1
    add-int/2addr v2, v1

    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4

    .prologue
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/ui/EmojiTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/EmojiTextView;->getTextSize()F

    move-result v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/ui/EmojiTextView;->a(Landroid/content/Context;Landroid/text/Spannable;I)V

    move-object p1, v0

    .line 55
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    return-void
.end method
