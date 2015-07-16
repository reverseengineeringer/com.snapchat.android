.class public final Laoq;
.super Laou;
.source "SourceFile"


# static fields
.field public static a:Laoq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Laou;-><init>()V

    return-void
.end method

.method public static a()Laoq;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Laoq;->a:Laoq;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Laoq;

    invoke-direct {v0}, Laoq;-><init>()V

    sput-object v0, Laoq;->a:Laoq;

    .line 18
    :cond_0
    sget-object v0, Laoq;->a:Laoq;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Laor;

    invoke-direct {v0, p1}, Laor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laoq;->b:Laos;

    .line 28
    invoke-static {}, Laot;->a()Laot;

    move-result-object v0

    iget-object v1, p0, Laoq;->b:Laos;

    invoke-virtual {v0, v1}, Laot;->a(Laos;)V

    .line 29
    return-void
.end method
