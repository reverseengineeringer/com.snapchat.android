.class public final Lasx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasx$a;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field public static final WEB_URLS:I = 0x1

.field public static final sUrlMatchFilter:Lasx$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lasx$1;

    invoke-direct {v0}, Lasx$1;-><init>()V

    sput-object v0, Lasx;->sUrlMatchFilter:Lasx$a;

    return-void
.end method

.method private static final a(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 265
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 269
    :cond_1
    return-void
.end method

.method private static final a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Latu;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 378
    new-instance v0, Lasx$2;

    invoke-direct {v0}, Lasx$2;-><init>()V

    .line 404
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 406
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 407
    const/4 v2, 0x0

    move v4, v0

    .line 409
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3

    .line 410
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 411
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latu;

    .line 414
    iget v5, v0, Latu;->start:I

    iget v6, v1, Latu;->start:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Latu;->end:I

    iget v6, v1, Latu;->start:I

    if-le v5, v6, :cond_2

    .line 415
    iget v5, v1, Latu;->end:I

    iget v6, v0, Latu;->end:I

    if-gt v5, v6, :cond_0

    .line 416
    add-int/lit8 v0, v2, 0x1

    .line 423
    :goto_1
    if-eq v0, v3, :cond_2

    .line 424
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 425
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 426
    goto :goto_0

    .line 417
    :cond_0
    iget v5, v0, Latu;->end:I

    iget v6, v0, Latu;->start:I

    sub-int/2addr v5, v6

    iget v6, v1, Latu;->end:I

    iget v7, v1, Latu;->start:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 418
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 419
    :cond_1
    iget v5, v0, Latu;->end:I

    iget v0, v0, Latu;->start:I

    sub-int v0, v5, v0

    iget v5, v1, Latu;->end:I

    iget v1, v1, Latu;->start:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 420
    goto :goto_1

    .line 431
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 432
    goto :goto_0

    .line 433
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Latu;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_0
    invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 336
    if-ltz v3, :cond_0

    .line 337
    new-instance v4, Latu;

    invoke-direct {v4}, Latu;-><init>()V

    .line 341
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 342
    add-int/2addr v5, v3

    .line 344
    add-int/2addr v3, v0

    iput v3, v4, Latu;->start:I

    .line 345
    add-int v3, v0, v5

    iput v3, v4, Latu;->end:I

    .line 346
    sget-object v3, Lcom/snapchat/android/util/chat/UrlType;->MAP:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v3, v4, Latu;->type:Lcom/snapchat/android/util/chat/UrlType;

    .line 347
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    add-int/2addr v0, v5

    .line 353
    :try_start_0
    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "geo:0,0?q="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Latu;->url:Ljava/lang/String;

    .line 359
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    :cond_0
    return-void

    .line 355
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lasx$a;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Latu;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Lasx$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 313
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    .line 315
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v10}, Lasx$a;->a(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    :cond_1
    new-instance v12, Latu;

    invoke-direct {v12}, Latu;-><init>()V

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-ge v7, v2, :cond_5

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v4, p3, v7

    const/4 v5, 0x0

    aget-object v6, p3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v4, p3, v7

    const/4 v5, 0x0

    aget-object v6, p3, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v8

    :goto_2
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_2
    iput-object v1, v12, Latu;->url:Ljava/lang/String;

    .line 320
    iput v10, v12, Latu;->start:I

    .line 321
    iput v11, v12, Latu;->end:I

    .line 323
    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 317
    :cond_3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 326
    :cond_4
    return-void

    :cond_5
    move v2, v8

    goto :goto_2
.end method

.method private static a(Lako;Landroid/text/Spannable;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-interface {p1, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 174
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 175
    aget-object v4, v0, v3

    invoke-interface {p1, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 178
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "http://"

    aput-object v5, v4, v1

    const-string v5, "https://"

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string v6, "rtsp://"

    aput-object v6, v4, v5

    sget-object v5, Lasx;->sUrlMatchFilter:Lasx$a;

    invoke-static {v0, p1, v3, v4, v5}, Lasx;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lasx$a;)V

    .line 183
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "mailto:"

    aput-object v5, v4, v1

    const/4 v5, 0x0

    invoke-static {v0, p1, v3, v4, v5}, Lasx;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Lasx$a;)V

    .line 186
    invoke-static {v0, p1}, Lasx;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 187
    invoke-static {v0, p1}, Lasx;->b(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 189
    invoke-static {v0}, Lasx;->a(Ljava/util/ArrayList;)V

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 199
    :goto_1
    return v0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 196
    iget-object v3, v0, Latu;->type:Lcom/snapchat/android/util/chat/UrlType;

    iget-object v4, v0, Latu;->url:Ljava/lang/String;

    iget v5, v0, Latu;->start:I

    iget v0, v0, Latu;->end:I

    new-instance v6, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-direct {v6, v4, p0, v3}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;-><init>(Ljava/lang/String;Lako;Lcom/snapchat/android/util/chat/UrlType;)V

    const/16 v3, 0x21

    invoke-interface {p1, v6, v5, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 199
    goto :goto_1
.end method

.method public static final a(Lako;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 233
    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 234
    check-cast v0, Landroid/text/Spannable;

    invoke-static {p0, v0}, Lasx;->a(Lako;Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p1}, Lasx;->a(Landroid/widget/TextView;)V

    move v0, v1

    .line 249
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 242
    invoke-static {p0, v0}, Lasx;->a(Lako;Landroid/text/Spannable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-static {p1}, Lasx;->a(Landroid/widget/TextView;)V

    .line 244
    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 246
    goto :goto_0

    :cond_2
    move v0, v2

    .line 249
    goto :goto_0
.end method

.method private static final b(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Latu;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-static {}, Lep;->a()Lep;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lep$a;->a:Lep$a;

    new-instance v4, Lep$2;

    invoke-direct {v4, v0, v1, v2, v3}, Lep$2;-><init>(Lep;Ljava/lang/CharSequence;Ljava/lang/String;Lep$a;)V

    .line 367
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Len;

    .line 368
    new-instance v2, Latu;

    invoke-direct {v2}, Latu;-><init>()V

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Len;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Latu;->url:Ljava/lang/String;

    .line 370
    iget v3, v0, Len;->a:I

    iput v3, v2, Latu;->start:I

    .line 371
    invoke-virtual {v0}, Len;->a()I

    move-result v0

    iput v0, v2, Latu;->end:I

    .line 372
    sget-object v0, Lcom/snapchat/android/util/chat/UrlType;->TEL:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v0, v2, Latu;->type:Lcom/snapchat/android/util/chat/UrlType;

    .line 373
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public static final b(Lako;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 254
    instance-of v0, p0, Lakj;

    if-nez v0, :cond_0

    instance-of v0, p0, Laki;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Laki;

    iget-boolean v0, v0, Laki;->mHasLinks:Z

    if-eqz v0, :cond_5

    .line 256
    :cond_0
    check-cast p0, Lakb;

    invoke-virtual {p0}, Lakb;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 258
    :goto_0
    return v0

    .line 256
    :cond_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v3, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v0, v4

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v1, v4, v2

    move-object v0, v1

    check-cast v0, Landroid/text/style/URLSpan;

    new-instance v6, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/snapchat/android/util/chat/UrlType;->LINK:Lcom/snapchat/android/util/chat/UrlType;

    invoke-direct {v6, v7, p0, v8}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;-><init>(Ljava/lang/String;Lako;Lcom/snapchat/android/util/chat/UrlType;)V

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/16 v8, 0x21

    invoke-virtual {v3, v6, v7, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 258
    goto :goto_0
.end method
