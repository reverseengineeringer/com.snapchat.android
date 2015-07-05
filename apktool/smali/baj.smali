.class public final Lbaj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FAKE_FRIENDMOJIS:Ljava/lang/String;

.field private static SMILEY_FACE_CODE_POINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->HEAVY_BLACK_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->WHITE_MEDIUM_STAR:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMIRKING_FACE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->GRINNING_FACE_WITH_SMILING_EYES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->SMILING_FACE_WITH_SUNGLASSES:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->CLAPPING_HANDS_SIGN:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->FIRE:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/emoji/Emoji;->YELLOW_HEART:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v1}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbaj;->FAKE_FRIENDMOJIS:Ljava/lang/String;

    .line 34
    const/16 v0, 0x263a

    sput v0, Lbaj;->SMILEY_FACE_CODE_POINT:I

    return-void
.end method

.method public static a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/util/emoji/Emoji;->getBytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 42
    const-string v0, ""

    goto :goto_0
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lbaj;->FAKE_FRIENDMOJIS:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-static {}, Laxj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    check-cast v0, Landroid/text/Spannable;

    move v1, v2

    .line 58
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    sget v5, Lbaj;->SMILEY_FACE_CODE_POINT:I

    if-ne v4, v5, :cond_0

    .line 61
    new-instance v4, Landroid/text/style/TypefaceSpan;

    invoke-direct {v4, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v4, v1, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_2
    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_FAKE_FRIENDMOJI_ENABLED:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lauc;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 77
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
