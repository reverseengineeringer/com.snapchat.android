.class public final Lbma$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/net/URL;

.field c:Ljava/lang/String;

.field public d:Lblu$a;

.field e:Lbmb;

.field f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v0, "GET"

    iput-object v0, p0, Lbma$a;->c:Ljava/lang/String;

    .line 135
    new-instance v0, Lblu$a;

    invoke-direct {v0}, Lblu$a;-><init>()V

    iput-object v0, p0, Lbma$a;->d:Lblu$a;

    .line 136
    return-void
.end method

.method private constructor <init>(Lbma;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iget-object v0, p1, Lbma;->a:Ljava/lang/String;

    iput-object v0, p0, Lbma$a;->a:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lbma;->f:Ljava/net/URL;

    iput-object v0, p0, Lbma$a;->b:Ljava/net/URL;

    .line 141
    iget-object v0, p1, Lbma;->b:Ljava/lang/String;

    iput-object v0, p0, Lbma$a;->c:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lbma;->d:Lbmb;

    iput-object v0, p0, Lbma$a;->e:Lbmb;

    .line 143
    iget-object v0, p1, Lbma;->e:Ljava/lang/Object;

    iput-object v0, p0, Lbma$a;->f:Ljava/lang/Object;

    .line 144
    iget-object v0, p1, Lbma;->c:Lblu;

    invoke-virtual {v0}, Lblu;->b()Lblu$a;

    move-result-object v0

    iput-object v0, p0, Lbma$a;->d:Lblu$a;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lbma;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lbma$a;-><init>(Lbma;)V

    return-void
.end method


# virtual methods
.method public final a(Lblj;)Lbma$a;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p1}, Lblj;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lbma$a;->b(Ljava/lang/String;)Lbma$a;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lbma$a;->a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lblu;)Lbma$a;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p1}, Lblu;->b()Lblu$a;

    move-result-object v0

    iput-object v0, p0, Lbma$a;->d:Lblu$a;

    .line 187
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbma$a;
    .locals 2

    .prologue
    .line 148
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p1, p0, Lbma$a;->a:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lbma$a;->b:Ljava/net/URL;

    .line 151
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lbmb;)Lbma$a;
    .locals 3

    .prologue
    .line 230
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lbmx;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lbmx;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    const/4 v0, 0x0

    sget-object v1, Lbmp;->a:[B

    invoke-static {v0, v1}, Lbmb;->a(Lblw;[B)Lbmb;

    move-result-object p2

    .line 239
    :cond_3
    iput-object p1, p0, Lbma$a;->c:Ljava/lang/String;

    .line 240
    iput-object p2, p0, Lbma$a;->e:Lbmb;

    .line 241
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lbma$a;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lbma$a;->d:Lblu$a;

    invoke-virtual {v0, p1, p2}, Lblu$a;->b(Ljava/lang/String;Ljava/lang/String;)Lblu$a;

    .line 167
    return-object p0
.end method

.method public final a(Ljava/net/URL;)Lbma$a;
    .locals 1

    .prologue
    .line 155
    iput-object p1, p0, Lbma$a;->b:Ljava/net/URL;

    .line 157
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbma$a;->a:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public final a()Lbma;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbma$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    new-instance v0, Lbma;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbma;-><init>(Lbma$a;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lbma$a;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbma$a;->d:Lblu$a;

    invoke-virtual {v0, p1}, Lblu$a;->b(Ljava/lang/String;)Lblu$a;

    .line 181
    return-object p0
.end method
