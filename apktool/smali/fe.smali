.class public abstract Lfe;
.super Lfc;
.source "SourceFile"

# interfaces
.implements Lav;


# static fields
.field private static final synthetic ajc$tjp_0:Lcfl$a;

.field private static final synthetic ajc$tjp_1:Lcfl$a;


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lfe;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lfc;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lfc;-><init>(Ljava/lang/String;[B)V

    .line 40
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lcgl;

    const-string v1, "AbstractFullBox.java"

    const-class v2, Lfe;

    invoke-direct {v0, v1, v2}, Lcgl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setVersion"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "version"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcgh;

    move-result-object v1

    const/16 v2, 0x33

    invoke-virtual {v0, v8, v1, v2}, Lcgl;->a(Ljava/lang/String;Lcfo;I)Lcfl$a;

    move-result-object v1

    sput-object v1, Lfe;->ajc$tjp_0:Lcfl$a;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setFlags"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "flags"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lcgl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcgh;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v8, v1, v2}, Lcgl;->a(Ljava/lang/String;Lcfo;I)Lcfl$a;

    move-result-object v0

    sput-object v0, Lfe;->ajc$tjp_1:Lcfl$a;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1
    .annotation runtime Lfj;
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lfe;->isParsed:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lfe;->parseDetails()V

    .line 61
    :cond_0
    iget v0, p0, Lfe;->flags:I

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation runtime Lfj;
    .end annotation

    .prologue
    .line 45
    iget-boolean v0, p0, Lfe;->isParsed:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lfe;->parseDetails()V

    .line 48
    :cond_0
    iget v0, p0, Lfe;->version:I

    return v0
.end method

.method public final parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
    .locals 2

    .prologue
    .line 76
    invoke-static {p1}, Lao;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lfe;->version:I

    .line 77
    invoke-static {p1}, Lao;->b(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lfe;->flags:I

    .line 78
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public setFlags(I)V
    .locals 2

    .prologue
    sget-object v0, Lfe;->ajc$tjp_1:Lcfl$a;

    invoke-static {p1}, Lcgj;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lcgl;->a(Lcfl$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcfl;

    move-result-object v0

    .line 65
    invoke-static {}, Lfi;->a()Lfi;

    invoke-static {v0}, Lfi;->a(Lcfl;)V

    iput p1, p0, Lfe;->flags:I

    .line 66
    return-void
.end method

.method public setVersion(I)V
    .locals 2

    .prologue
    sget-object v0, Lfe;->ajc$tjp_0:Lcfl$a;

    invoke-static {p1}, Lcgj;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lcgl;->a(Lcfl$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcfl;

    move-result-object v0

    .line 52
    invoke-static {}, Lfi;->a()Lfi;

    invoke-static {v0}, Lfi;->a(Lcfl;)V

    iput p1, p0, Lfe;->version:I

    .line 53
    return-void
.end method

.method public final writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lfe;->version:I

    invoke-static {p1, v0}, Lap;->b(Ljava/nio/ByteBuffer;I)V

    .line 83
    iget v0, p0, Lfe;->flags:I

    invoke-static {p1, v0}, Lap;->a(Ljava/nio/ByteBuffer;I)V

    .line 84
    return-void
.end method
