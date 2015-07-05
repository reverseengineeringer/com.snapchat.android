.class public final Leb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcc;
.end annotation


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 501
    new-instance v0, Leb$1;

    invoke-direct {v0}, Leb$1;-><init>()V

    sput-object v0, Leb;->a:Ljava/io/OutputStream;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .prologue
    .line 65
    invoke-static {p0}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/16 v0, 0x1000

    new-array v2, v0, [B

    .line 68
    const-wide/16 v0, 0x0

    .line 70
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 71
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 72
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    invoke-static {p0, v0}, Leb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 116
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
