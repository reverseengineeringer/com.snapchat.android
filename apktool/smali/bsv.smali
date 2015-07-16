.class public final Lbsv;
.super Lbsi;


# static fields
.field public static final a:Lbsv;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lbsv;

    const-string v1, "session_start"

    invoke-direct {v0, v1}, Lbsv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbsv;->a:Lbsv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lbuk;->a:Lbuk;

    invoke-virtual {v0}, Lbuk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lbsv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x8c

    .line 44
    invoke-direct {p0}, Lbsi;-><init>()V

    .line 45
    sget-object v0, Lbsw;->a:Lbsw;

    invoke-virtual {v0}, Lbsw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsv;->d:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 50
    :cond_0
    iput-object p1, p0, Lbsv;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lbsv;->c:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lbsv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lbsv;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lbue;->b()V

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 63
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lbsv;->d:Ljava/lang/String;

    return-object v0
.end method
