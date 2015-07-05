.class final Leo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leo$a;,
        Leo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Len;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:[Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private final i:Lep;

.field private final j:Ljava/lang/CharSequence;

.field private final k:Ljava/lang/String;

.field private final l:Lep$a;

.field private m:J

.field private n:I

.field private o:Len;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 67
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->b:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->c:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->d:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->e:Ljava/util/regex/Pattern;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    const-string v2, "/+(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "(\\([^(]*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Leo;->g:[Ljava/util/regex/Pattern;

    .line 129
    const-string v2, "(\\[\uff08\uff3b"

    .line 130
    const-string v0, ")\\]\uff09\uff3d"

    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "[^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Leo;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "(?:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "])?(?:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "])?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+(?:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "])"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->f:Ljava/util/regex/Pattern;

    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Leo;->a(II)Ljava/lang/String;

    move-result-object v3

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Leo;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    const/4 v1, 0x0

    const/16 v4, 0x14

    invoke-static {v1, v4}, Leo;->a(II)Ljava/lang/String;

    move-result-object v4

    .line 160
    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    const-string v5, "\\p{Nd}"

    const/4 v1, 0x1

    const/16 v6, 0x14

    invoke-static {v1, v6}, Leo;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "+\uff0b"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Leo;->h:Ljava/util/regex/Pattern;

    .line 169
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lep;->f:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xd

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "(?:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(?:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Leo;->a:Ljava/util/regex/Pattern;

    .line 174
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method constructor <init>(Lep;Ljava/lang/CharSequence;Ljava/lang/String;Lep$a;J)V
    .locals 3

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget v0, Leo$b;->a:I

    iput v0, p0, Leo;->n:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Leo;->o:Len;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Leo;->p:I

    .line 228
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 231
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 234
    :cond_2
    iput-object p1, p0, Leo;->i:Lep;

    .line 235
    if-eqz p2, :cond_3

    :goto_0
    iput-object p2, p0, Leo;->j:Ljava/lang/CharSequence;

    .line 236
    iput-object p3, p0, Leo;->k:Ljava/lang/String;

    .line 237
    iput-object p4, p0, Leo;->l:Lep$a;

    .line 238
    iput-wide p5, p0, Leo;->m:J

    .line 239
    return-void

    .line 235
    :cond_3
    const-string p2, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Len;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 390
    :try_start_0
    sget-object v0, Leo;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leo;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v6

    .line 448
    :goto_0
    return-object v0

    .line 396
    :cond_1
    iget-object v0, p0, Leo;->l:Lep$a;

    sget-object v1, Lep$a;->b:Lep$a;

    invoke-virtual {v0, v1}, Lep$a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 399
    if-lez p2, :cond_3

    sget-object v0, Leo;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_3

    .line 400
    iget-object v0, p0, Leo;->j:Ljava/lang/CharSequence;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 402
    invoke-static {v0}, Leo;->b(C)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Leo;->a(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v6

    .line 403
    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 407
    iget-object v1, p0, Leo;->j:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 408
    iget-object v1, p0, Leo;->j:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 409
    invoke-static {v0}, Leo;->b(C)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Leo;->a(C)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v6

    .line 410
    goto :goto_0

    .line 415
    :cond_5
    iget-object v0, p0, Leo;->i:Lep;

    iget-object v2, p0, Leo;->k:Ljava/lang/String;

    new-instance v5, Ler$a;

    invoke-direct {v5}, Ler$a;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lep;->a(Ljava/lang/String;Ljava/lang/String;ZZLer$a;)V

    .line 429
    iget-object v0, p0, Leo;->i:Lep;

    iget v1, v5, Ler$a;->a:I

    invoke-virtual {v0, v1}, Lep;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v5}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_6

    if-lez p2, :cond_7

    iget-object v0, p0, Leo;->j:Ljava/lang/CharSequence;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_7

    :cond_6
    move-object v0, v6

    .line 433
    goto/16 :goto_0

    .line 436
    :cond_7
    iget-object v0, p0, Leo;->l:Lep$a;

    iget-object v1, p0, Leo;->i:Lep;

    invoke-virtual {v0, v5, p1, v1}, Lep$a;->a(Ler$a;Ljava/lang/String;Lep;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 440
    invoke-virtual {v5}, Ler$a;->c()Ler$a;

    .line 441
    invoke-virtual {v5}, Ler$a;->b()Ler$a;

    .line 442
    invoke-virtual {v5}, Ler$a;->d()Ler$a;

    .line 443
    new-instance v0, Len;

    invoke-direct {v0, p2, p1, v5}, Len;-><init>(ILjava/lang/String;Ler$a;)V
    :try_end_0
    .catch Lem; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_8
    move-object v0, v6

    .line 448
    goto/16 :goto_0
.end method

.method private static a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 280
    :cond_0
    return-object p1
.end method

.method private static a(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-ge p1, p0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v1

    .line 295
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v1, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Lep;Ler$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 475
    .line 476
    iget-object v0, p1, Ler$a;->i:Ler$a$a;

    sget-object v2, Ler$a$a;->d:Ler$a$a;

    if-eq v0, v2, :cond_6

    .line 478
    iget v0, p1, Ler$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    move v2, v0

    move v0, v1

    .line 483
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_5

    .line 486
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 487
    if-gez v2, :cond_0

    .line 512
    :goto_2
    return v1

    .line 491
    :cond_0
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 492
    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 497
    iget v3, p1, Ler$a;->a:I

    invoke-virtual {p0, v3}, Lep;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {p0, v3}, Lep;->c(Ljava/lang/String;)Leq$b;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Lep;->b:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    if-nez v3, :cond_1

    const-string v3, "null"

    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2b

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Invalid or missing region code ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") provided."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 503
    invoke-static {p1}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v1

    .line 504
    aget-object v0, p3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    .line 498
    :cond_2
    iget-object v3, v5, Leq$b;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    const-string v5, "~"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 483
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 512
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ler$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method static a(Ler$a;Lep;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 656
    iget-object v1, p0, Ler$a;->i:Ler$a$a;

    sget-object v2, Ler$a$a;->d:Ler$a$a;

    if-eq v1, v2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 659
    :cond_1
    iget v1, p0, Ler$a;->a:I

    invoke-virtual {p1, v1}, Lep;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-virtual {p1, v1}, Lep;->c(Ljava/lang/String;)Leq$b;

    move-result-object v1

    .line 662
    if-eqz v1, :cond_0

    .line 666
    invoke-static {p0}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v2

    .line 667
    iget-object v3, v1, Leq$b;->t:Ljava/util/List;

    invoke-virtual {p1, v3, v2}, Lep;->a(Ljava/util/List;Ljava/lang/String;)Leq$a;

    move-result-object v2

    .line 671
    if-eqz v2, :cond_0

    iget-object v3, v2, Leq$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 672
    iget-boolean v3, v2, Leq$a;->e:Z

    if-nez v3, :cond_0

    .line 677
    iget-object v2, v2, Leq$a;->d:Ljava/lang/String;

    invoke-static {v2}, Lep;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    iget-object v0, p0, Ler$a;->h:Ljava/lang/String;

    invoke-static {v0}, Lep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lep;->a(Ljava/lang/StringBuilder;Leq$b;Ljava/lang/StringBuilder;)Z

    move-result v0

    goto :goto_0
.end method

.method static a(Ler$a;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v4, 0x2f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 600
    if-gez v3, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 606
    if-ltz v4, :cond_0

    .line 612
    iget-object v2, p0, Ler$a;->i:Ler$a$a;

    sget-object v5, Ler$a$a;->a:Ler$a$a;

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Ler$a;->i:Ler$a$a;

    sget-object v5, Ler$a$a;->c:Ler$a$a;

    if-ne v2, v5, :cond_3

    :cond_2
    move v2, v1

    .line 615
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Ler$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 619
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v2, v0

    .line 612
    goto :goto_1

    :cond_4
    move v0, v1

    .line 621
    goto :goto_0
.end method

.method static a(Ler$a;Ljava/lang/String;Lep;)Z
    .locals 6

    .prologue
    const/16 v5, 0x78

    const/16 v4, 0x58

    const/4 v1, 0x0

    .line 631
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_5

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 633
    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    .line 634
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 635
    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_3

    .line 638
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 639
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p0, v2}, Lep;->a(Ler$a;Ljava/lang/String;)I

    move-result v2

    sget v3, Lep$b;->d:I

    if-eq v2, v3, :cond_4

    .line 650
    :cond_2
    :goto_1
    return v1

    .line 644
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ler$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static a(Ler$a;Ljava/lang/String;Lep;Leo$a;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 578
    invoke-static {p1, v1}, Lep;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 580
    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Leo;->a(Lep;Ler$a;Leq$a;)[Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-interface {p3, p2, p0, v2, v0}, Leo$a;->a(Lep;Ler$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 595
    :goto_0
    return v0

    .line 585
    :cond_0
    iget v0, p0, Ler$a;->a:I

    invoke-static {v0}, Lel;->a(I)Leq$b;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_2

    .line 588
    iget-object v0, v0, Leq$b;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leq$a;

    .line 589
    invoke-static {p2, p0, v0}, Leo;->a(Lep;Ler$a;Leq$a;)[Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-interface {p3, p2, p0, v2, v0}, Leo$a;->a(Lep;Ler$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 591
    goto :goto_0

    .line 595
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ler$a;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 519
    sget-object v0, Lep;->g:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 522
    iget-boolean v0, p0, Ler$a;->c:Z

    if-eqz v0, :cond_1

    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    .line 527
    :goto_0
    array-length v3, v4

    if-eq v3, v2, :cond_0

    aget-object v3, v4, v0

    invoke-static {p0}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 544
    :goto_1
    return v0

    .line 522
    :cond_1
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 534
    :cond_2
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .line 535
    :goto_2
    if-lez v3, :cond_4

    if-ltz v0, :cond_4

    .line 537
    aget-object v5, v4, v0

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v1

    .line 539
    goto :goto_1

    .line 536
    :cond_3
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 544
    :cond_4
    if-ltz v0, :cond_5

    aget-object v0, v4, v0

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static a(Lep;Ler$a;Leq$a;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 554
    if-nez p2, :cond_7

    .line 556
    sget v2, Lep$c;->d:I

    iget-wide v0, p1, Ler$a;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ler$a;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Ler$a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 559
    :goto_0
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 560
    if-gez v1, :cond_0

    .line 561
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 564
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 565
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 569
    :goto_1
    return-object v0

    .line 556
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v4, p1, Ler$a;->a:I

    invoke-static {p1}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lep$c;->a:I

    if-ne v2, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lep$c;->a:I

    invoke-static {v4, v0, v3}, Lep;->a(IILjava/lang/StringBuilder;)V

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lep;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Lep;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lep;->a(ILjava/lang/String;)Leq$b;

    move-result-object v5

    iget-object v0, v5, Leq$b;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lep$c;->c:I

    if-ne v2, v0, :cond_5

    :cond_4
    iget-object v0, v5, Leq$b;->t:Ljava/util/List;

    :goto_3
    invoke-virtual {p0, v0, v1}, Lep;->a(Ljava/util/List;Ljava/lang/String;)Leq$a;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v5, v2, v3}, Lep;->a(Ler$a;Leq$b;ILjava/lang/StringBuilder;)V

    invoke-static {v4, v2, v3}, Lep;->a(IILjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_5
    iget-object v0, v5, Leq$b;->u:Ljava/util/List;

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v1, v0, v2}, Lep;->a(Ljava/lang/String;Leq$a;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 568
    :cond_7
    invoke-static {p1}, Lep;->a(Ler$a;)Ljava/lang/String;

    move-result-object v0

    .line 569
    sget v1, Lep$c;->d:I

    invoke-virtual {p0, v0, p2, v1}, Lep;->a(Ljava/lang/String;Leq$a;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(C)Z
    .locals 2

    .prologue
    .line 304
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 14

    .prologue
    .line 694
    iget v0, p0, Leo;->n:I

    sget v1, Leo$b;->a:I

    if-ne v0, v1, :cond_2

    .line 695
    iget v0, p0, Leo;->p:I

    sget-object v1, Leo;->a:Ljava/util/regex/Pattern;

    iget-object v2, p0, Leo;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_0
    iget-wide v4, p0, Leo;->m:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_9

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    iget-object v0, p0, Leo;->j:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lep;->d:Ljava/util/regex/Pattern;

    invoke-static {v1, v0}, Leo;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v0, Leo;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Leo;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leo;->j:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Leo;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Leo;->a(Ljava/lang/String;I)Len;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    :goto_2
    iput-object v0, p0, Leo;->o:Len;

    .line 696
    iget-object v0, p0, Leo;->o:Len;

    if-nez v0, :cond_a

    .line 697
    sget v0, Leo$b;->c:I

    iput v0, p0, Leo;->n:I

    .line 703
    :cond_2
    :goto_3
    iget v0, p0, Leo;->n:I

    sget v1, Leo$b;->b:I

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_4
    return v0

    .line 695
    :cond_3
    sget-object v7, Leo;->g:[Ljava/util/regex/Pattern;

    array-length v8, v7

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    if-ge v2, v8, :cond_7

    aget-object v0, v7, v2

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v10, p0, Leo;->m:J

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_6

    if-eqz v0, :cond_4

    sget-object v0, Lep;->e:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-virtual {v6, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leo;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Leo;->a(Ljava/lang/String;I)Len;

    move-result-object v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Leo;->m:J

    const-wide/16 v10, 0x1

    sub-long/2addr v0, v10

    iput-wide v0, p0, Leo;->m:J

    const/4 v0, 0x0

    :cond_4
    sget-object v1, Lep;->e:Ljava/util/regex/Pattern;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Leo;->a(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, v4

    invoke-direct {p0, v1, v10}, Leo;->a(Ljava/lang/String;I)Len;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-wide v10, p0, Leo;->m:J

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    iput-wide v10, p0, Leo;->m:J

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v4

    iget-wide v4, p0, Leo;->m:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Leo;->m:J

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 699
    :cond_a
    iget-object v0, p0, Leo;->o:Len;

    invoke-virtual {v0}, Len;->a()I

    move-result v0

    iput v0, p0, Leo;->p:I

    .line 700
    sget v0, Leo$b;->b:I

    iput v0, p0, Leo;->n:I

    goto/16 :goto_3

    .line 703
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_4
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Leo;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Leo;->o:Len;

    const/4 v1, 0x0

    iput-object v1, p0, Leo;->o:Len;

    sget v1, Leo$b;->a:I

    iput v1, p0, Leo;->n:I

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 725
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
