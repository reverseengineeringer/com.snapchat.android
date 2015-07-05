.class public final enum Lbsa;
.super Ljava/lang/Enum;


# static fields
.field public static final enum A:Lbsa;

.field public static final enum B:Lbsa;

.field private static D:Ljava/util/HashMap;

.field private static final synthetic F:[Lbsa;

.field public static final enum a:Lbsa;

.field public static final enum b:Lbsa;

.field public static final enum c:Lbsa;

.field public static final enum d:Lbsa;

.field public static final enum e:Lbsa;

.field public static final enum f:Lbsa;

.field public static final enum g:Lbsa;

.field public static final enum h:Lbsa;

.field public static final enum i:Lbsa;

.field public static final enum j:Lbsa;

.field public static final enum k:Lbsa;

.field public static final enum l:Lbsa;

.field public static final enum m:Lbsa;

.field public static final enum n:Lbsa;

.field public static final enum o:Lbsa;

.field public static final enum p:Lbsa;

.field public static final enum q:Lbsa;

.field public static final enum r:Lbsa;

.field public static final enum s:Lbsa;

.field public static final enum t:Lbsa;

.field public static final enum u:Lbsa;

.field public static final enum v:Lbsa;

.field public static final enum w:Lbsa;

.field public static final enum x:Lbsa;

.field public static final enum y:Lbsa;

.field public static final enum z:Lbsa;


# instance fields
.field C:I

.field private E:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lbsa;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v5, v2}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->a:Lbsa;

    .line 32
    new-instance v0, Lbsa;

    const-string v1, "ASSERTION_ERROR"

    const-string v2, "java.lang.AssertionError"

    invoke-direct {v0, v1, v6, v6, v2}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->b:Lbsa;

    .line 33
    new-instance v0, Lbsa;

    const-string v1, "BIND_EXCEPTION"

    const-string v2, "java.net.BindException"

    invoke-direct {v0, v1, v7, v7, v2}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->c:Lbsa;

    .line 34
    new-instance v0, Lbsa;

    const-string v1, "CLASS_NOT_FOUND_EXCEPTION"

    const-string v2, "java.lang.ClassNotFoundException"

    invoke-direct {v0, v1, v8, v8, v2}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->d:Lbsa;

    .line 35
    new-instance v0, Lbsa;

    const-string v1, "ERROR"

    const-string v2, "java.lang.Error"

    invoke-direct {v0, v1, v9, v9, v2}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->e:Lbsa;

    .line 36
    new-instance v0, Lbsa;

    const-string v1, "IO_EXCEPTION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "java.io.IOException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->f:Lbsa;

    .line 37
    new-instance v0, Lbsa;

    const-string v1, "ILLEGAL_ARGUMENT_EXCEPTION"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "java.lang.IllegalArgumentException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->g:Lbsa;

    .line 38
    new-instance v0, Lbsa;

    const-string v1, "ILLEGAL_STATE_EXCEPTION"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "java.lang.IllegalStateException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->h:Lbsa;

    .line 39
    new-instance v0, Lbsa;

    const-string v1, "INDEX_OUT_OF_BOUNDS_EXCEPTION"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "java.lang.IndexOutOfBoundsException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->i:Lbsa;

    .line 40
    new-instance v0, Lbsa;

    const-string v1, "MALFORMED_URL_EXCEPTION"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string v4, "java.net.MalformedURLException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->j:Lbsa;

    .line 41
    new-instance v0, Lbsa;

    const-string v1, "NO_SUCH_PROVIDER_EXCEPTION"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string v4, "java.security.NoSuchProviderException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->k:Lbsa;

    .line 42
    new-instance v0, Lbsa;

    const-string v1, "NULL_POINTER_EXCEPTION"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string v4, "java.lang.NullPointerException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->l:Lbsa;

    .line 43
    new-instance v0, Lbsa;

    const-string v1, "PROTOCOL_EXCEPTION"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string v4, "java.net.ProtocolException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->m:Lbsa;

    .line 44
    new-instance v0, Lbsa;

    const-string v1, "SECURITY_EXCEPTION"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string v4, "java.lang.SecurityException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->n:Lbsa;

    .line 45
    new-instance v0, Lbsa;

    const-string v1, "SOCKET_EXCEPTION"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string v4, "java.net.SocketException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->o:Lbsa;

    .line 46
    new-instance v0, Lbsa;

    const-string v1, "SOCKET_TIMEOUT_EXCEPTION"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string v4, "java.net.SocketTimeoutException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->p:Lbsa;

    .line 47
    new-instance v0, Lbsa;

    const-string v1, "SSL_PEER_UNVERIFIED_EXCEPTION"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string v4, "javax.net.ssl.SSLPeerUnverifiedException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->q:Lbsa;

    .line 48
    new-instance v0, Lbsa;

    const-string v1, "STRING_INDEX_OUT_OF_BOUNDS_EXCEPTION"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string v4, "java.lang.StringIndexOutOfBoundsException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->r:Lbsa;

    .line 49
    new-instance v0, Lbsa;

    const-string v1, "UNKNOWN_HOST_EXCEPTION"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const-string v4, "java.net.UnknownHostException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->s:Lbsa;

    .line 50
    new-instance v0, Lbsa;

    const-string v1, "UNKNOWN_SERVICE_EXCEPTION"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string v4, "java.net.UnknownServiceException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->t:Lbsa;

    .line 51
    new-instance v0, Lbsa;

    const-string v1, "UNSUPPORTED_OPERATION_EXCEPTION"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-string v4, "java.lang.UnsupportedOperationException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->u:Lbsa;

    .line 52
    new-instance v0, Lbsa;

    const-string v1, "URI_SYNTAX_EXCEPTION"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const-string v4, "java.net.URISyntaxException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->v:Lbsa;

    .line 53
    new-instance v0, Lbsa;

    const-string v1, "CONNECT_EXCEPTION"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v4, "java.net.ConnectException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->w:Lbsa;

    .line 54
    new-instance v0, Lbsa;

    const-string v1, "SSL_EXCEPTION"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v4, "javax.net.ssl.SSLException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->x:Lbsa;

    .line 55
    new-instance v0, Lbsa;

    const-string v1, "SSL_HANDSHAKE_EXCEPTION"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v4, "javax.net.ssl.SSLHandshakeException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->y:Lbsa;

    .line 56
    new-instance v0, Lbsa;

    const-string v1, "SSL_KEY_EXCEPTION"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v4, "javax.net.ssl.SSLKeyException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->z:Lbsa;

    .line 57
    new-instance v0, Lbsa;

    const-string v1, "SSL_PROTOCOL_EXCEPTION"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v4, "javax.net.ssl.SSLProtocolException"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->A:Lbsa;

    .line 58
    new-instance v0, Lbsa;

    const-string v1, "UNDEFINED_EXCEPTION"

    const/16 v2, 0x1b

    const/4 v3, -0x1

    const-string v4, "__UNKNOWN__"

    invoke-direct {v0, v1, v2, v3, v4}, Lbsa;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lbsa;->B:Lbsa;

    .line 19
    const/16 v0, 0x1c

    new-array v0, v0, [Lbsa;

    sget-object v1, Lbsa;->a:Lbsa;

    aput-object v1, v0, v5

    sget-object v1, Lbsa;->b:Lbsa;

    aput-object v1, v0, v6

    sget-object v1, Lbsa;->c:Lbsa;

    aput-object v1, v0, v7

    sget-object v1, Lbsa;->d:Lbsa;

    aput-object v1, v0, v8

    sget-object v1, Lbsa;->e:Lbsa;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lbsa;->f:Lbsa;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lbsa;->g:Lbsa;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lbsa;->h:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lbsa;->i:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lbsa;->j:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lbsa;->k:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lbsa;->l:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lbsa;->m:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lbsa;->n:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lbsa;->o:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lbsa;->p:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lbsa;->q:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lbsa;->r:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lbsa;->s:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lbsa;->t:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lbsa;->u:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lbsa;->v:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lbsa;->w:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lbsa;->x:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lbsa;->y:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lbsa;->z:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lbsa;->A:Lbsa;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lbsa;->B:Lbsa;

    aput-object v2, v0, v1

    sput-object v0, Lbsa;->F:[Lbsa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lbsa;->C:I

    .line 67
    iput-object p4, p0, Lbsa;->E:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lbsa;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lbsa;->D:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lbsa;->a()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 110
    if-eqz p0, :cond_1

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_1
    sget-object v1, Lbsa;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsa;

    .line 116
    if-nez v0, :cond_2

    .line 117
    sget-object v0, Lbsa;->B:Lbsa;

    .line 120
    :cond_2
    return-object v0
.end method

.method private static declared-synchronized a()V
    .locals 7

    .prologue
    .line 85
    const-class v1, Lbsa;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbsa;->D:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    monitor-exit v1

    return-void

    .line 89
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    invoke-static {}, Lbsa;->values()[Lbsa;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 92
    iget-object v6, v5, Lbsa;->E:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_1
    sput-object v2, Lbsa;->D:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbsa;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbsa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbsa;

    return-object v0
.end method

.method public static values()[Lbsa;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbsa;->F:[Lbsa;

    invoke-virtual {v0}, [Lbsa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbsa;

    return-object v0
.end method
