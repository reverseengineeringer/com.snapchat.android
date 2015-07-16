.class public final Lfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg;


# instance fields
.field a:Ljava/nio/channels/FileChannel;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfh;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final a()J
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 7

    .prologue
    .line 57
    iget-object v1, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    .line 61
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 54
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lfh;->a:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 66
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lfh;->b:Ljava/lang/String;

    return-object v0
.end method
