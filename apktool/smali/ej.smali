.class public abstract Lej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcc;
.end annotation

.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lej$b;,
        Lej$a;
    }
.end annotation


# static fields
.field private static final a:Lej;

.field private static final b:Lej;

.field private static final c:Lej;

.field private static final d:Lej;

.field private static final e:Lej;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 345
    new-instance v0, Lej$b;

    const-string v1, "base64()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lej$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lej;->a:Lej;

    .line 365
    new-instance v0, Lej$b;

    const-string v1, "base64Url()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lej$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lej;->b:Lej;

    .line 386
    new-instance v0, Lej$b;

    const-string v1, "base32()"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lej$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lej;->c:Lej;

    .line 406
    new-instance v0, Lej$b;

    const-string v1, "base32Hex()"

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lej$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lej;->d:Lej;

    .line 425
    new-instance v0, Lej$b;

    const-string v1, "base16()"

    const-string v2, "0123456789ABCDEF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lej$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lej;->e:Lej;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lej;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lej;->e:Lej;

    return-object v0
.end method

.method private a([BI)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int/lit8 v1, p2, 0x0

    array-length v2, p1

    invoke-static {v0, v1, v2}, Lco;->a(III)V

    .line 168
    invoke-virtual {p0, p2}, Lej;->a(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Lel$1;

    invoke-direct {v1, v2}, Lel$1;-><init>(Ljava/lang/StringBuilder;)V

    .line 169
    invoke-virtual {p0, v1}, Lej;->a(Lel$b;)Lel$a;

    move-result-object v2

    .line 171
    :goto_0
    if-ge v0, p2, :cond_0

    .line 172
    add-int/lit8 v3, v0, 0x0

    :try_start_0
    aget-byte v3, p1, v3

    invoke-interface {v2, v3}, Lel$a;->a(B)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v2}, Lel$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method abstract a(I)I
.end method

.method abstract a(Lel$b;)Lel$a;
.end method

.method public final a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lej;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
