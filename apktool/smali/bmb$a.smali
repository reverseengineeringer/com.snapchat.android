.class final Lbmb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\\((.*?)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbmb$a;->c:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "\\s+at\\s.+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbmb$a;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lbmb$a;->a(Ljava/lang/String;)Lbmb$a;

    .line 67
    return-void
.end method

.method private a(Ljava/lang/String;)Lbmb$a;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "NO STACK TRACE PROVIDED"

    iput-object v0, p0, Lbmb$a;->a:Ljava/lang/String;

    .line 139
    :cond_0
    :goto_0
    return-object p0

    .line 74
    :cond_1
    iput-object p1, p0, Lbmb$a;->a:Ljava/lang/String;

    .line 77
    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 78
    array-length v0, v8

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 82
    const/4 v5, 0x0

    .line 83
    const/4 v4, 0x0

    .line 85
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v0, 0x1

    move v6, v0

    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_5

    .line 90
    aget-object v0, v8, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 91
    aget-object v0, v8, v6

    sget-object v1, Lbmb$a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lbmb$a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "\\s+at\\s+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_2
    const-string v3, ""

    const-string v1, ""

    array-length v10, v0

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    move-object v0, v1

    move-object v1, v2

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v7}, Lbmb$a;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    new-instance v7, Ljava/lang/StackTraceElement;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v7

    .line 105
    :goto_4
    if-nez v5, :cond_a

    aget-object v0, v8, v6

    const-string v2, "com.snapchat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v2, v1

    .line 122
    :goto_5
    if-nez v4, :cond_9

    aget-object v0, v8, v6

    sget-object v3, Lbmb$a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 126
    :goto_6
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 88
    :goto_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-object v4, v0

    move-object v5, v1

    goto/16 :goto_1

    .line 91
    :cond_2
    const-string v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    array-length v10, v0

    const/4 v11, 0x2

    if-lt v10, v11, :cond_b

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StackTraceElement;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v7, -0x1

    invoke-direct {v1, v0, v2, v3, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 131
    :cond_5
    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_8
    iput-object v0, p0, Lbmb$a;->a:Ljava/lang/String;

    .line 134
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    iput-object v0, p0, Lbmb$a;->b:[Ljava/lang/StackTraceElement;

    goto/16 :goto_0

    .line 131
    :cond_7
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 137
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lbmb$a;->b:[Ljava/lang/StackTraceElement;

    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    goto :goto_6

    :cond_a
    move-object v2, v5

    goto :goto_5

    :cond_b
    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_3

    :cond_c
    move-object v0, v4

    move-object v1, v5

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, -0x1

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 249
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 255
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ":~"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 257
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 260
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 260
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 265
    :cond_3
    const-string v1, "Native Method"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    const/4 v0, -0x2

    goto :goto_0
.end method
