.class public final Laic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lchh;Ljava/util/Locale;Z)Ljava/lang/String;
    .locals 1
    .param p0    # Lchh;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Ljava/util/Locale;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 33
    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p0, p2}, Laic;->a(Lchh;Z)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/i18n/LocalePatterns;

    move-result-object v0

    .line 40
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->getMonthDayYearPattern()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_1
    invoke-static {v0}, Lckw;->a(Ljava/lang/String;)Lckx;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lckx;->a(Lcia;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/android/i18n/LocalePatterns;->getMonthDayPattern()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    invoke-static {p0, p2}, Laic;->a(Lchh;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lchh;Z)Ljava/lang/String;
    .locals 3
    .param p0    # Lchh;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    new-instance v0, Lchh$a;

    iget-object v2, p0, Lcih;->b:Lchg;

    invoke-virtual {v2}, Lchg;->C()Lchi;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lchh$a;-><init>(Lchh;Lchi;)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lchh$a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lchh;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lchh;->g()I

    move-result v0

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "th"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Lchh;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    rem-int/lit8 v0, v0, 0xa

    goto :goto_0

    :pswitch_0
    const-string v0, "st"

    goto :goto_1

    :pswitch_1
    const-string v0, "nd"

    goto :goto_1

    :pswitch_2
    const-string v0, "rd"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
