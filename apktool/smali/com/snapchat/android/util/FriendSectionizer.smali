.class public abstract Lcom/snapchat/android/util/FriendSectionizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/FriendSectionizer$1;,
        Lcom/snapchat/android/util/FriendSectionizer$f;,
        Lcom/snapchat/android/util/FriendSectionizer$d;,
        Lcom/snapchat/android/util/FriendSectionizer$e;,
        Lcom/snapchat/android/util/FriendSectionizer$a;,
        Lcom/snapchat/android/util/FriendSectionizer$b;,
        Lcom/snapchat/android/util/FriendSectionizer$c;,
        Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    return-void
.end method

.method public static a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/snapchat/android/util/FriendSectionizer;->b(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne p0, v0, :cond_0

    .line 35
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-static {p1}, Lcom/snapchat/android/util/FriendSectionizer;->b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2}, Lcom/snapchat/android/util/FriendSectionizer;->b(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 46
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const v0, 0x7f0c0171

    .line 51
    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$1;->$SwitchMap$com$snapchat$android$util$FriendSectionizer$FriendSection:[I

    invoke-virtual {p0}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    invoke-virtual {p0}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->name()Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const v0, 0x7f0c0009

    .line 117
    :goto_1
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_2
    const v0, 0x7f0c0148

    .line 57
    goto :goto_1

    .line 59
    :pswitch_3
    const v0, 0x7f0c0216

    .line 60
    goto :goto_1

    .line 62
    :pswitch_4
    const v0, 0x7f0c01ad

    .line 63
    goto :goto_1

    .line 65
    :pswitch_5
    const v0, 0x7f0c004d

    .line 66
    goto :goto_1

    .line 68
    :pswitch_6
    const v0, 0x7f0c0041

    .line 69
    goto :goto_1

    .line 71
    :pswitch_7
    const v0, 0x7f0c01eb

    .line 72
    goto :goto_1

    .line 74
    :pswitch_8
    const v0, 0x7f0c017c

    .line 75
    goto :goto_1

    .line 83
    :pswitch_9
    const v0, 0x7f0c0217

    .line 84
    goto :goto_1

    .line 86
    :pswitch_a
    const v0, 0x7f0c0218

    .line 87
    goto :goto_1

    .line 89
    :pswitch_b
    const v0, 0x7f0c001b

    .line 90
    goto :goto_1

    .line 92
    :pswitch_c
    const v0, 0x7f0c0019

    .line 93
    goto :goto_1

    .line 95
    :pswitch_d
    const v0, 0x7f0c0022

    .line 96
    goto :goto_1

    .line 98
    :pswitch_e
    const v0, 0x7f0c015c

    .line 99
    goto :goto_1

    .line 101
    :pswitch_f
    const v0, 0x7f0c0146

    .line 102
    goto :goto_1

    .line 104
    :pswitch_10
    const v0, 0x7f0c0147

    .line 105
    goto :goto_1

    .line 107
    :pswitch_11
    const v0, 0x7f0c0145

    .line 108
    goto :goto_1

    .line 110
    :pswitch_12
    const v0, 0x7f0c01de

    .line 111
    goto :goto_1

    .line 113
    :pswitch_13
    const-string v0, ""

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;"
        }
    .end annotation
.end method
