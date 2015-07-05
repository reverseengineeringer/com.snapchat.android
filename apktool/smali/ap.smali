.class public final Lap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lap;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 42
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 43
    shr-int/lit8 v1, v0, 0x8

    const v2, 0xffff

    and-int/2addr v1, v2

    shr-int/lit8 v2, v1, 0x8

    invoke-static {p0, v2}, Lap;->b(Ljava/nio/ByteBuffer;I)V

    and-int/lit16 v1, v1, 0xff

    invoke-static {p0, v1}, Lap;->b(Ljava/nio/ByteBuffer;I)V

    .line 44
    invoke-static {p0, v0}, Lap;->b(Ljava/nio/ByteBuffer;I)V

    .line 46
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .prologue
    .line 23
    sget-boolean v0, Lap;->a:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The given long is negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 69
    and-int/lit16 v0, p1, 0xff

    .line 70
    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .prologue
    .line 28
    sget-boolean v0, Lap;->a:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The given long is not in the range of uint32 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 29
    :cond_1
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    return-void
.end method
