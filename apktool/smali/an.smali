.class public Lan;
.super Lff;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lfj;
.end annotation


# static fields
.field private static a:Lfr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lan;

    invoke-static {v0}, Lfr;->a(Ljava/lang/Class;)Lfr;

    move-result-object v0

    sput-object v0, Lan;->a:Lfr;

    return-void
.end method

.method public constructor <init>(Lfg;Lal;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lff;-><init>()V

    .line 64
    invoke-interface {p1}, Lfg;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lan;->initContainer(Lfg;JLal;)V

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 68
    new-array v1, v3, [B

    .line 69
    if-eqz p0, :cond_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 74
    :cond_0
    return-object v1

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lan;->dataSource:Lfg;

    invoke-interface {v0}, Lfg;->close()V

    .line 116
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lan;->dataSource:Lfg;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
