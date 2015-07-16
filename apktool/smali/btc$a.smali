.class public final enum Lbtc$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lbtc$a;

.field public static final enum b:Lbtc$a;

.field public static final enum c:Lbtc$a;

.field public static final enum d:Lbtc$a;

.field public static final enum e:Lbtc$a;

.field public static final enum f:Lbtc$a;

.field public static final enum g:Lbtc$a;

.field public static final enum h:Lbtc$a;

.field public static final enum i:Lbtc$a;

.field public static final enum j:Lbtc$a;

.field public static final enum k:Lbtc$a;

.field private static final synthetic m:[Lbtc$a;


# instance fields
.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lbtc$a;

    const-string v1, "NOT_LOGGED_YET"

    const-string v2, "Not logged"

    invoke-direct {v0, v1, v4, v2}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->a:Lbtc$a;

    .line 48
    new-instance v0, Lbtc$a;

    const-string v1, "INPUT_STREAM_READ"

    const-string v2, "InputStream.read()"

    invoke-direct {v0, v1, v5, v2}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->b:Lbtc$a;

    .line 49
    new-instance v0, Lbtc$a;

    const-string v1, "INPUT_STREAM_CLOSE"

    const-string v2, "InputStream.close()"

    invoke-direct {v0, v1, v6, v2}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->c:Lbtc$a;

    .line 50
    new-instance v0, Lbtc$a;

    const-string v1, "SOCKET_CLOSE"

    const-string v2, "Socket.close()"

    invoke-direct {v0, v1, v7, v2}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->d:Lbtc$a;

    .line 51
    new-instance v0, Lbtc$a;

    const-string v1, "LEGACY_JAVANET"

    const-string v2, "Legacy java.net"

    invoke-direct {v0, v1, v8, v2}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->e:Lbtc$a;

    .line 52
    new-instance v0, Lbtc$a;

    const-string v1, "HTTP_CONTENT_LENGTH_PARSER"

    const/4 v2, 0x5

    const-string v3, "parse()"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->f:Lbtc$a;

    .line 53
    new-instance v0, Lbtc$a;

    const-string v1, "INPUT_STREAM_FINISHED"

    const/4 v2, 0x6

    const-string v3, "finishedMessage()"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->g:Lbtc$a;

    .line 54
    new-instance v0, Lbtc$a;

    const-string v1, "PARSING_INPUT_STREAM_LOG_ERROR"

    const/4 v2, 0x7

    const-string v3, "logError()"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->h:Lbtc$a;

    .line 55
    new-instance v0, Lbtc$a;

    const-string v1, "SOCKET_IMPL_CONNECT"

    const/16 v2, 0x8

    const-string v3, "MonitoredSocketImpl.connect()"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->i:Lbtc$a;

    .line 56
    new-instance v0, Lbtc$a;

    const-string v1, "SSL_SOCKET_START_HANDSHAKE"

    const/16 v2, 0x9

    const-string v3, "MonitoredSSLSocket.startHandshake"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->j:Lbtc$a;

    .line 57
    new-instance v0, Lbtc$a;

    const-string v1, "UNIT_TEST"

    const/16 v2, 0xa

    const-string v3, "Unit test"

    invoke-direct {v0, v1, v2, v3}, Lbtc$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbtc$a;->k:Lbtc$a;

    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [Lbtc$a;

    sget-object v1, Lbtc$a;->a:Lbtc$a;

    aput-object v1, v0, v4

    sget-object v1, Lbtc$a;->b:Lbtc$a;

    aput-object v1, v0, v5

    sget-object v1, Lbtc$a;->c:Lbtc$a;

    aput-object v1, v0, v6

    sget-object v1, Lbtc$a;->d:Lbtc$a;

    aput-object v1, v0, v7

    sget-object v1, Lbtc$a;->e:Lbtc$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbtc$a;->f:Lbtc$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbtc$a;->g:Lbtc$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbtc$a;->h:Lbtc$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbtc$a;->i:Lbtc$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbtc$a;->j:Lbtc$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbtc$a;->k:Lbtc$a;

    aput-object v2, v0, v1

    sput-object v0, Lbtc$a;->m:[Lbtc$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-object p3, p0, Lbtc$a;->l:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbtc$a;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lbtc$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbtc$a;

    return-object v0
.end method

.method public static values()[Lbtc$a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lbtc$a;->m:[Lbtc$a;

    invoke-virtual {v0}, [Lbtc$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbtc$a;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbtc$a;->l:Ljava/lang/String;

    return-object v0
.end method
