.class public Lax;
.super Lat;
.source "SourceFile"


# static fields
.field public static final synthetic b:Lcfl$a;

.field private static final synthetic c:Lcfl$a;


# instance fields
.field public a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lcgl;

    const-string v1, "StaticChunkOffsetBox.java"

    const-class v2, Lax;

    invoke-direct {v0, v1, v2}, Lcgl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getChunkOffsets"

    const-string v3, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "[J"

    invoke-virtual/range {v0 .. v7}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcgh;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v0, v8, v1, v2}, Lcgl;->a(Ljava/lang/String;Lcfo;I)Lcfl$a;

    move-result-object v1

    sput-object v1, Lax;->c:Lcfl$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setChunkOffsets"

    const-string v3, "com.coremedia.iso.boxes.StaticChunkOffsetBox"

    const-string v4, "[J"

    const-string v5, "chunkOffsets"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcgh;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v8, v1, v2}, Lcgl;->a(Ljava/lang/String;Lcfo;I)Lcfl$a;

    move-result-object v0

    sput-object v0, Lax;->b:Lcfl$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "stco"

    invoke-direct {p0, v0}, Lat;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lax;->a:[J

    .line 37
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lax;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 54
    invoke-static {p1}, Lao;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lfn;->a(J)I

    move-result v1

    .line 55
    new-array v0, v1, [J

    iput-object v0, p0, Lax;->a:[J

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lax;->a:[J

    invoke-static {p1}, Lao;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a()[J
    .locals 1

    .prologue
    sget-object v0, Lax;->c:Lcfl$a;

    invoke-static {v0, p0, p0}, Lcgl;->a(Lcfl$a;Ljava/lang/Object;Ljava/lang/Object;)Lcfl;

    move-result-object v0

    .line 40
    invoke-static {}, Lfi;->a()Lfi;

    invoke-static {v0}, Lfi;->a(Lcfl;)V

    iget-object v0, p0, Lax;->a:[J

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lax;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 65
    iget-object v0, p0, Lax;->a:[J

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lap;->b(Ljava/nio/ByteBuffer;J)V

    .line 66
    iget-object v1, p0, Lax;->a:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 69
    return-void

    .line 66
    :cond_0
    aget-wide v4, v1, v0

    .line 67
    invoke-static {p1, v4, v5}, Lap;->b(Ljava/nio/ByteBuffer;J)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getContentSize()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lax;->a:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method
