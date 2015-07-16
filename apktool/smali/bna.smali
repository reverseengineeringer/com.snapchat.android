.class public final enum Lbna;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbna;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbna;

.field public static final enum b:Lbna;

.field public static final enum c:Lbna;

.field public static final enum d:Lbna;

.field private static final synthetic f:[Lbna;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lbna;

    const-string v1, "HTTP_1_0"

    const-string v2, "http/1.0"

    invoke-direct {v0, v1, v3, v2}, Lbna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbna;->a:Lbna;

    .line 45
    new-instance v0, Lbna;

    const-string v1, "HTTP_1_1"

    const-string v2, "http/1.1"

    invoke-direct {v0, v1, v4, v2}, Lbna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbna;->b:Lbna;

    .line 57
    new-instance v0, Lbna;

    const-string v1, "SPDY_3"

    const-string v2, "spdy/3.1"

    invoke-direct {v0, v1, v5, v2}, Lbna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbna;->c:Lbna;

    .line 69
    new-instance v0, Lbna;

    const-string v1, "HTTP_2"

    const-string v2, "h2"

    invoke-direct {v0, v1, v6, v2}, Lbna;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbna;->d:Lbna;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lbna;

    sget-object v1, Lbna;->a:Lbna;

    aput-object v1, v0, v3

    sget-object v1, Lbna;->b:Lbna;

    aput-object v1, v0, v4

    sget-object v1, Lbna;->c:Lbna;

    aput-object v1, v0, v5

    sget-object v1, Lbna;->d:Lbna;

    aput-object v1, v0, v6

    sput-object v0, Lbna;->f:[Lbna;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lbna;->e:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/String;)Lbna;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lbna;->a:Lbna;

    iget-object v0, v0, Lbna;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbna;->a:Lbna;

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    sget-object v0, Lbna;->b:Lbna;

    iget-object v0, v0, Lbna;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbna;->b:Lbna;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lbna;->d:Lbna;

    iget-object v0, v0, Lbna;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbna;->d:Lbna;

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Lbna;->c:Lbna;

    iget-object v0, v0, Lbna;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lbna;->c:Lbna;

    goto :goto_0

    .line 87
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected protocol: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbna;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbna;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbna;

    return-object v0
.end method

.method public static values()[Lbna;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbna;->f:[Lbna;

    invoke-virtual {v0}, [Lbna;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbna;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbna;->e:Ljava/lang/String;

    return-object v0
.end method
