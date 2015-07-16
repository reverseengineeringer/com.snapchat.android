.class public final Lais;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laje;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Laje;->a()Laje;

    move-result-object v0

    invoke-direct {p0, v0}, Lais;-><init>(Laje;)V

    .line 21
    return-void
.end method

.method private constructor <init>(Laje;)V
    .locals 0
    .param p1    # Laje;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lais;->a:Laje;

    .line 26
    return-void
.end method
