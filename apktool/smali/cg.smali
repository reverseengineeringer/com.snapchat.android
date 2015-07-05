.class public abstract Lcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl;


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcg$a;,
        Lcg$b;,
        Lcg$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcl",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcg;

.field public static final b:Lcg;

.field public static final c:Lcg;

.field public static final d:Lcg;

.field public static final e:Lcg;

.field public static final f:Lcg;

.field public static final g:Lcg;

.field public static final h:Lcg;

.field public static final i:Lcg;

.field public static final j:Lcg;

.field public static final k:Lcg;

.field public static final l:Lcg;

.field public static final m:Lcg;

.field static final o:I

.field public static final p:Lcg;

.field private static final q:Ljava/lang/String;


# instance fields
.field final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x7f

    const/4 v1, 0x0

    const/16 v5, 0x1f

    .line 67
    new-instance v0, Lcg$1;

    invoke-direct {v0}, Lcg$1;-><init>()V

    sput-object v0, Lcg;->a:Lcg;

    .line 100
    const-string v0, "CharMatcher.ASCII"

    invoke-static {v1, v6, v0}, Lcg;->a(CCLjava/lang/String;)Lcg;

    move-result-object v0

    sput-object v0, Lcg;->b:Lcg;

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 139
    :goto_0
    if-ge v0, v5, :cond_0

    .line 140
    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcg;->q:Ljava/lang/String;

    .line 150
    new-instance v0, Lcg$c;

    const-string v2, "CharMatcher.DIGIT"

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcg;->q:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcg$c;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcg;->c:Lcg;

    .line 158
    new-instance v0, Lcg$4;

    const-string v2, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v2}, Lcg$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->d:Lcg;

    .line 169
    new-instance v0, Lcg$5;

    const-string v2, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v2}, Lcg$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->e:Lcg;

    .line 179
    new-instance v0, Lcg$6;

    const-string v2, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v2}, Lcg$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->f:Lcg;

    .line 190
    new-instance v0, Lcg$7;

    const-string v2, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v2}, Lcg$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->g:Lcg;

    .line 201
    new-instance v0, Lcg$8;

    const-string v2, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v2}, Lcg$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->h:Lcg;

    .line 212
    invoke-static {v1, v5}, Lcg;->a(CC)Lcg;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-static {v6, v1}, Lcg;->a(CC)Lcg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcg;->a(Lcg;)Lcg;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    invoke-virtual {v0, v1}, Lcg;->a(Ljava/lang/String;)Lcg;

    move-result-object v0

    sput-object v0, Lcg;->i:Lcg;

    .line 222
    new-instance v0, Lcg$c;

    const-string v1, "CharMatcher.INVISIBLE"

    const-string v2, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcg$c;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcg;->j:Lcg;

    .line 247
    new-instance v0, Lcg$c;

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    const-string v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcg$c;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcg;->k:Lcg;

    .line 252
    new-instance v0, Lcg$9;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcg$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->l:Lcg;

    .line 328
    new-instance v0, Lcg$10;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcg$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->m:Lcg;

    .line 1358
    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcg;->o:I

    .line 1371
    new-instance v0, Lcg$3;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1}, Lcg$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcg;->p:Lcg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcg;->n:Ljava/lang/String;

    .line 610
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcg;->n:Ljava/lang/String;

    .line 602
    return-void
.end method

.method private static a(CC)Lcg;
    .locals 5

    .prologue
    .line 550
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lck;->a(Z)V

    .line 551
    invoke-static {p0}, Lcg;->b(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcg;->b(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CharMatcher.inRange(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-static {p0, p1, v0}, Lcg;->a(CCLjava/lang/String;)Lcg;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(CCLjava/lang/String;)Lcg;
    .locals 1

    .prologue
    .line 559
    new-instance v0, Lcg$2;

    invoke-direct {v0, p2, p0, p1}, Lcg$2;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method private static b(C)Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    const-string v1, "0123456789ABCDEF"

    .line 230
    const/4 v0, 0x6

    new-array v2, v0, [C

    fill-array-data v2, :array_0

    .line 231
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 232
    rsub-int/lit8 v3, v0, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 233
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    nop

    :array_0
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method


# virtual methods
.method public a(Lcg;)Lcg;
    .locals 2

    .prologue
    .line 720
    new-instance v1, Lcg$b;

    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcg;

    invoke-direct {v1, p0, v0}, Lcg$b;-><init>(Lcg;Lcg;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Lcg;
    .locals 1

    .prologue
    .line 775
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract a(C)Z
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1340
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcg;->a(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcg;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcg;->n:Ljava/lang/String;

    return-object v0
.end method
