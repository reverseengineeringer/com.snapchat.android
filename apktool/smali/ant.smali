.class public final Lant;
.super Lanx;
.source "SourceFile"


# static fields
.field public static a:Lant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lanx;-><init>()V

    return-void
.end method

.method public static a()Lant;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lant;->a:Lant;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lant;

    invoke-direct {v0}, Lant;-><init>()V

    sput-object v0, Lant;->a:Lant;

    .line 18
    :cond_0
    sget-object v0, Lant;->a:Lant;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lanu;

    invoke-direct {v0, p1}, Lanu;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lant;->b:Lanv;

    .line 28
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v0

    iget-object v1, p0, Lant;->b:Lanv;

    invoke-virtual {v0, v1}, Lanw;->a(Lanv;)V

    .line 29
    return-void
.end method
