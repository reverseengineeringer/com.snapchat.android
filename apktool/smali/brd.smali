.class public final Lbrd;
.super Ljava/net/SocketImpl;

# interfaces
.implements Lbrf;


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;

.field private static e:[Ljava/lang/reflect/Method;

.field private static f:Z

.field private static g:Ljava/lang/Throwable;


# instance fields
.field private final h:Ljava/util/Queue;

.field private i:Lbum;

.field private j:Lbtx;

.field private k:Ljava/net/SocketImpl;

.field private l:Lbve;

.field private m:Lbvf;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v1, 0x14

    const/4 v3, 0x0

    .line 109
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lbrd;->e:[Ljava/lang/reflect/Method;

    .line 115
    sput-boolean v3, Lbrd;->f:Z

    .line 121
    const/4 v0, 0x0

    sput-object v0, Lbrd;->g:Ljava/lang/Throwable;

    .line 131
    :try_start_0
    const-class v0, Ljava/net/SocketImpl;

    .line 133
    const-string v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lbrd;->a:Ljava/lang/reflect/Field;

    .line 134
    const-string v2, "fd"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lbrd;->b:Ljava/lang/reflect/Field;

    .line 135
    const-string v2, "localport"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lbrd;->c:Ljava/lang/reflect/Field;

    .line 136
    const-string v2, "port"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lbrd;->d:Ljava/lang/reflect/Field;

    .line 138
    sget-object v2, Lbrd;->a:Ljava/lang/reflect/Field;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/reflect/AccessibleObject;

    const/4 v5, 0x0

    sget-object v6, Lbrd;->b:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lbrd;->c:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lbrd;->d:Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    invoke-static {v4}, Lbur;->a([Ljava/lang/reflect/AccessibleObject;)V

    .line 140
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const-string v5, "accept"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/SocketImpl;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 141
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    const-string v5, "available"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 142
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    const-string v5, "bind"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/InetAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 143
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    const-string v5, "close"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 144
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/InetAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 145
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/net/SocketAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 146
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x6

    const-string v5, "connect"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 147
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/4 v4, 0x7

    const-string v5, "create"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 148
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x8

    const-string v5, "getFileDescriptor"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 149
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x9

    const-string v5, "getInetAddress"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 150
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xa

    const-string v5, "getInputStream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 151
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xb

    const-string v5, "getLocalPort"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 152
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xc

    const-string v5, "getOutputStream"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 153
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xd

    const-string v5, "getPort"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 154
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xe

    const-string v5, "listen"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 155
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0xf

    const-string v5, "sendUrgentData"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 156
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x10

    const-string v5, "setPerformancePreferences"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 157
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x11

    const-string v5, "shutdownInput"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 158
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x12

    const-string v5, "shutdownOutput"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    aput-object v5, v2, v4

    .line 159
    sget-object v2, Lbrd;->e:[Ljava/lang/reflect/Method;

    const/16 v4, 0x13

    const-string v5, "supportsUrgentData"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    aput-object v0, v2, v4

    .line 161
    sget-object v0, Lbrd;->e:[Ljava/lang/reflect/Method;

    invoke-static {v0}, Lbur;->a([Ljava/lang/reflect/AccessibleObject;)V

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lbrd;->f:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 200
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sput-boolean v3, Lbrd;->f:Z

    .line 166
    sput-object v0, Lbrd;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 168
    sput-boolean v3, Lbrd;->f:Z

    move v0, v3

    .line 172
    :goto_1
    if-ge v0, v1, :cond_6

    .line 173
    sget-object v3, Lbrd;->e:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 179
    :goto_2
    new-instance v1, Lbsz;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lbsz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lbrd;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 181
    sput-boolean v3, Lbrd;->f:Z

    .line 183
    const-string v0, "unknown"

    .line 184
    sget-object v2, Lbrd;->a:Ljava/lang/reflect/Field;

    if-nez v2, :cond_3

    .line 185
    const-string v0, "address"

    .line 194
    :cond_2
    :goto_3
    new-instance v2, Lbsz;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such field: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lbsz;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v2, Lbrd;->g:Ljava/lang/Throwable;

    goto :goto_0

    .line 186
    :cond_3
    sget-object v2, Lbrd;->b:Ljava/lang/reflect/Field;

    if-nez v2, :cond_4

    .line 187
    const-string v0, "fd"

    goto :goto_3

    .line 188
    :cond_4
    sget-object v2, Lbrd;->c:Ljava/lang/reflect/Field;

    if-nez v2, :cond_5

    .line 189
    const-string v0, "localport"

    goto :goto_3

    .line 190
    :cond_5
    sget-object v2, Lbrd;->d:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 191
    const-string v0, "port"

    goto :goto_3

    .line 195
    :catch_3
    move-exception v0

    .line 197
    sput-boolean v3, Lbrd;->f:Z

    .line 198
    sput-object v0, Lbrd;->g:Ljava/lang/Throwable;

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Lbum;Lbtx;Ljava/net/SocketImpl;)V
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    .line 202
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbrd;->h:Ljava/util/Queue;

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    if-nez p3, :cond_1

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    iput-object p1, p0, Lbrd;->i:Lbum;

    .line 232
    iput-object p2, p0, Lbrd;->j:Lbtx;

    .line 233
    iput-object p3, p0, Lbrd;->k:Ljava/net/SocketImpl;

    .line 235
    invoke-direct {p0}, Lbrd;->f()V

    .line 236
    return-void
.end method

.method private a(Z)Lbtc;
    .locals 2

    .prologue
    .line 631
    new-instance v0, Lbtc;

    invoke-direct {v0}, Lbtc;-><init>()V

    .line 633
    invoke-virtual {p0}, Lbrd;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {v0, v1}, Lbtc;->a(Ljava/net/InetAddress;)V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lbrd;->getPort()I

    move-result v1

    .line 639
    if-lez v1, :cond_1

    .line 640
    invoke-virtual {v0, v1}, Lbtc;->a(I)V

    .line 643
    :cond_1
    if-eqz p1, :cond_2

    .line 644
    sget-object v1, Lbus$a;->a:Lbus$a;

    invoke-virtual {v0, v1}, Lbtc;->a(Lbus$a;)V

    .line 647
    :cond_2
    iget-object v1, p0, Lbrd;->j:Lbtx;

    if-eqz v1, :cond_3

    .line 648
    iget-object v1, p0, Lbrd;->j:Lbtx;

    invoke-virtual {v1}, Lbtx;->a()Lbsb;

    move-result-object v1

    iput-object v1, v0, Lbtc;->j:Lbsb;

    .line 650
    :cond_3
    invoke-static {}, Lbsd;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 651
    invoke-static {}, Lbsd;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbtc;->a(Landroid/location/Location;)V

    .line 654
    :cond_4
    return-object v0
.end method

.method private varargs a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 315
    :try_start_0
    sget-object v0, Lbrd;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    iget-object v2, p0, Lbrd;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lbrd;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    iget-object v2, p0, Lbrd;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lbrd;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    iget v2, p0, Lbrd;->localport:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    sget-object v0, Lbrd;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    iget v2, p0, Lbrd;->port:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 318
    :try_start_1
    sget-object v0, Lbrd;->e:[Ljava/lang/reflect/Method;

    aget-object v0, v0, p1

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 344
    invoke-direct {p0}, Lbrd;->f()V

    return-object v0

    .line 315
    :catch_0
    move-exception v0

    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 319
    :catch_2
    move-exception v0

    .line 320
    :try_start_2
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lbrd;->f()V

    throw v0

    .line 321
    :catch_3
    move-exception v0

    .line 322
    :try_start_3
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 323
    :catch_4
    move-exception v0

    move-object v1, v0

    .line 324
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 325
    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lbsz;

    invoke-direct {v0, v1}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 330
    :cond_0
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 331
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 332
    :cond_1
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 333
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 337
    :cond_2
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 339
    :catch_5
    move-exception v0

    .line 340
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :catch_6
    move-exception v0

    .line 342
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private varargs b(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 355
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbrd;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    throw v0

    .line 359
    :catch_1
    move-exception v0

    .line 360
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private varargs c(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 373
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbrd;->a(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 374
    :catch_0
    move-exception v0

    throw v0

    .line 376
    :catch_1
    move-exception v0

    throw v0

    .line 379
    :catch_2
    move-exception v0

    .line 380
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 243
    sget-boolean v0, Lbrd;->f:Z

    return v0
.end method

.method public static d()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lbrd;->g:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 692
    sget-boolean v0, Lbrd;->f:Z

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lbsz;

    sget-object v1, Lbrd;->g:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 697
    :cond_0
    new-instance v0, Lbrd$1;

    invoke-direct {v0}, Lbrd$1;-><init>()V

    .line 723
    new-instance v1, Lbrd$2;

    invoke-direct {v1}, Lbrd$2;-><init>()V

    .line 727
    new-instance v2, Lbum;

    invoke-direct {v2, v1}, Lbum;-><init>(Ljava/util/concurrent/Executor;)V

    .line 728
    new-instance v1, Lbrd;

    invoke-direct {v1, v2, v3, v0}, Lbrd;-><init>(Lbum;Lbtx;Ljava/net/SocketImpl;)V

    .line 729
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 732
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v0}, Lbrd;->setOption(ILjava/lang/Object;)V

    .line 738
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lbrd;->getOption(I)Ljava/lang/Object;

    .line 739
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lbrd;->sendUrgentData(I)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lbrd;->listen(I)V

    .line 741
    invoke-virtual {v1}, Lbrd;->getOutputStream()Ljava/io/OutputStream;

    .line 742
    invoke-virtual {v1}, Lbrd;->getInputStream()Ljava/io/InputStream;

    .line 743
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lbrd;->create(Z)V

    .line 744
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbrd;->connect(Ljava/net/SocketAddress;I)V

    .line 745
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbrd;->connect(Ljava/net/InetAddress;I)V

    .line 746
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbrd;->connect(Ljava/lang/String;I)V

    .line 747
    invoke-virtual {v1}, Lbrd;->close()V

    .line 748
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbrd;->bind(Ljava/net/InetAddress;I)V

    .line 749
    invoke-virtual {v1}, Lbrd;->available()I

    .line 750
    invoke-virtual {v1, v1}, Lbrd;->accept(Ljava/net/SocketImpl;)V

    .line 751
    invoke-virtual {v1}, Lbrd;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 752
    invoke-virtual {v1}, Lbrd;->getInetAddress()Ljava/net/InetAddress;

    .line 753
    invoke-virtual {v1}, Lbrd;->getLocalPort()I

    .line 754
    invoke-virtual {v1}, Lbrd;->getPort()I

    .line 755
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lbrd;->setPerformancePreferences(III)V

    .line 756
    invoke-virtual {v1}, Lbrd;->shutdownInput()V

    .line 757
    invoke-virtual {v1}, Lbrd;->shutdownOutput()V

    .line 758
    invoke-virtual {v1}, Lbrd;->supportsUrgentData()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lbsz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 763
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    throw v0

    .line 766
    :catch_1
    move-exception v0

    .line 768
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 763
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 291
    :try_start_0
    sget-object v0, Lbrd;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lbrd;->address:Ljava/net/InetAddress;

    .line 292
    sget-object v0, Lbrd;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    iput-object v0, p0, Lbrd;->fd:Ljava/io/FileDescriptor;

    .line 293
    sget-object v0, Lbrd;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbrd;->localport:I

    .line 294
    sget-object v0, Lbrd;->d:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lbrd;->port:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 297
    :catch_1
    move-exception v0

    .line 298
    new-instance v1, Lbsz;

    invoke-direct {v1, v0}, Lbsz;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()Lbtc;
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbrd;->a(Z)Lbtc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lbtc;)V
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lbrd;->h:Ljava/util/Queue;

    monitor-enter v1

    .line 665
    :try_start_0
    iget-object v0, p0, Lbrd;->h:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 666
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final accept(Ljava/net/SocketImpl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v1, v0}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

.method public final available()I
    .locals 2

    .prologue
    .line 552
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 554
    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lbsz;

    const-string v1, "Received a null Integer"

    invoke-direct {v0, v1}, Lbsz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b()Lbtc;
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Lbrd;->h:Ljava/util/Queue;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lbrd;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtc;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bind(Ljava/net/InetAddress;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 540
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v3, v0}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 562
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :try_start_0
    iget-object v0, p0, Lbrd;->m:Lbvf;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lbrd;->m:Lbvf;

    invoke-virtual {v0}, Lbvf;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    throw v0

    .line 570
    :catch_1
    move-exception v0

    invoke-static {v0}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 452
    const/4 v0, 0x6

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 456
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lbrd;->a(Z)Lbtc;

    move-result-object v1

    invoke-virtual {v1}, Lbtc;->f()V

    invoke-virtual {v1, p1}, Lbtc;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lbtc;->a(I)V

    invoke-static {v0}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v2

    iput-object v2, v1, Lbtc;->g:Lbtb;

    iget-object v2, p0, Lbrd;->i:Lbum;

    sget-object v3, Lbtc$a;->i:Lbtc$a;

    invoke-virtual {v2, v1, v3}, Lbum;->a(Lbtc;Lbtc$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 463
    :cond_0
    :goto_0
    throw v0

    .line 457
    :catch_1
    move-exception v0

    throw v0

    .line 459
    :catch_2
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/InetAddress;I)V
    .locals 4

    .prologue
    .line 482
    const/4 v0, 0x4

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 486
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lbrd;->a(Z)Lbtc;

    move-result-object v1

    invoke-virtual {v1}, Lbtc;->f()V

    invoke-virtual {v1, p1}, Lbtc;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v1, p2}, Lbtc;->a(I)V

    invoke-static {v0}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v2

    iput-object v2, v1, Lbtc;->g:Lbtb;

    iget-object v2, p0, Lbrd;->i:Lbum;

    sget-object v3, Lbtc$a;->i:Lbtc$a;

    invoke-virtual {v2, v1, v3}, Lbum;->a(Lbtc;Lbtc$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 493
    :cond_0
    :goto_0
    throw v0

    .line 487
    :catch_1
    move-exception v0

    throw v0

    .line 489
    :catch_2
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 4

    .prologue
    .line 511
    const/4 v0, 0x5

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 515
    if-eqz p1, :cond_0

    :try_start_1
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbrd;->a(Z)Lbtc;

    move-result-object v1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Lbtc;->f()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbtc;->a(Ljava/net/InetAddress;)V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Lbtc;->a(I)V

    invoke-static {v0}, Lbtb;->a(Ljava/lang/Throwable;)Lbtb;

    move-result-object v2

    iput-object v2, v1, Lbtc;->g:Lbtb;

    iget-object v2, p0, Lbrd;->i:Lbum;

    sget-object v3, Lbtc$a;->i:Lbtc$a;

    invoke-virtual {v2, v1, v3}, Lbum;->a(Lbtc;Lbtc$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 522
    :cond_0
    :goto_0
    throw v0

    .line 516
    :catch_1
    move-exception v0

    throw v0

    .line 518
    :catch_2
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final create(Z)V
    .locals 4

    .prologue
    .line 447
    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-void
.end method

.method public final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    .prologue
    .line 584
    const/16 v0, 0x8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 588
    const/16 v0, 0x9

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 386
    const/16 v0, 0xa

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 389
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lbrd;->m:Lbvf;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbrd;->m:Lbvf;

    invoke-virtual {v1, v0}, Lbvf;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbrd;->m:Lbvf;

    .line 396
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    new-instance v1, Lbvf;

    iget-object v2, p0, Lbrd;->i:Lbum;

    invoke-direct {v1, p0, v0, v2}, Lbvf;-><init>(Lbrf;Ljava/io/InputStream;Lbum;)V

    iput-object v1, p0, Lbrd;->m:Lbvf;

    iget-object v0, p0, Lbrd;->m:Lbvf;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    throw v0

    .line 392
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getLocalPort()I
    .locals 2

    .prologue
    .line 606
    const/16 v0, 0xb

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 607
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getOption(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 413
    const/16 v0, 0xc

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 416
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lbrd;->l:Lbve;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbrd;->l:Lbve;

    invoke-virtual {v1, v0}, Lbve;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbrd;->l:Lbve;

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 416
    :cond_1
    new-instance v1, Lbve;

    invoke-direct {v1, p0, v0}, Lbve;-><init>(Lbrf;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lbrd;->l:Lbve;

    iget-object v0, p0, Lbrd;->l:Lbve;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    throw v0

    .line 419
    :catch_1
    move-exception v1

    invoke-static {v1}, Lbue;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getPort()I
    .locals 2

    .prologue
    .line 592
    const/16 v0, 0xd

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 593
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final listen(I)V
    .locals 4

    .prologue
    .line 544
    const/16 v0, 0xe

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-void
.end method

.method public final sendUrgentData(I)V
    .locals 4

    .prologue
    .line 602
    const/16 v0, 0xf

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method public final setOption(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 620
    return-void
.end method

.method public final setPerformancePreferences(III)V
    .locals 4

    .prologue
    .line 615
    const/16 v0, 0x10

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method public final shutdownInput()V
    .locals 2

    .prologue
    .line 576
    const/16 v0, 0x11

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public final shutdownOutput()V
    .locals 2

    .prologue
    .line 580
    const/16 v0, 0x12

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->c(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-void
.end method

.method public final supportsUrgentData()Z
    .locals 2

    .prologue
    .line 597
    const/16 v0, 0x13

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lbrd;->b(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 598
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lbrd;->k:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
