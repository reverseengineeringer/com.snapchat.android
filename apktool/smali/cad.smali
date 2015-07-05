.class public final Lcad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcad;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lcai;)Lbzv;
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lcae;

    invoke-direct {v0, p0}, Lcae;-><init>(Lcai;)V

    return-object v0
.end method

.method public static a(Lcaj;)Lbzw;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lcaf;

    invoke-direct {v0, p0}, Lcaf;-><init>(Lcaj;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;)Lcai;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcak;

    invoke-direct {v0}, Lcak;-><init>()V

    invoke-static {p0, v0}, Lcad;->a(Ljava/io/OutputStream;Lcak;)Lcai;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lcak;)Lcai;
    .locals 2

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lcad$1;

    invoke-direct {v0, p1, p0}, Lcad$1;-><init>(Lcak;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lcai;
    .locals 3

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lcad;->c(Ljava/net/Socket;)Lbzs;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcad;->a(Ljava/io/OutputStream;Lcak;)Lcai;

    move-result-object v1

    .line 118
    new-instance v2, Lbzs$1;

    invoke-direct {v2, v0, v1}, Lbzs$1;-><init>(Lbzs;Lcai;)V

    return-object v2
.end method

.method public static a(Ljava/io/File;)Lcaj;
    .locals 2

    .prologue
    .line 160
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lcak;

    invoke-direct {v1}, Lcak;-><init>()V

    invoke-static {v0, v1}, Lcad;->a(Ljava/io/InputStream;Lcak;)Lcaj;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcak;)Lcaj;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lcad$2;

    invoke-direct {v0, p1, p0}, Lcad$2;-><init>(Lcak;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcad;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static b(Ljava/io/File;)Lcai;
    .locals 2

    .prologue
    .line 173
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcad;->a(Ljava/io/OutputStream;)Lcai;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Lcaj;
    .locals 3

    .prologue
    .line 196
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {p0}, Lcad;->c(Ljava/net/Socket;)Lbzs;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcad;->a(Ljava/io/InputStream;Lcak;)Lcaj;

    move-result-object v1

    .line 199
    new-instance v2, Lbzs$2;

    invoke-direct {v2, v0, v1}, Lbzs$2;-><init>(Lbzs;Lcaj;)V

    return-object v2
.end method

.method private static c(Ljava/net/Socket;)Lbzs;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcad$3;

    invoke-direct {v0, p0}, Lcad$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lcai;
    .locals 2

    .prologue
    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcad;->a(Ljava/io/OutputStream;)Lcai;

    move-result-object v0

    return-object v0
.end method
