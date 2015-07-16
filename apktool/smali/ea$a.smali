.class final Lea$a;
.super Ldo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldo",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lea;


# direct methods
.method private constructor <init>(Lea;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lea$a;->a:Lea;

    invoke-direct {p0}, Ldo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lea;B)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lea$a;-><init>(Lea;)V

    return-void
.end method


# virtual methods
.method public final a()Lef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lef",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lea$a;->b()Ldl;

    move-result-object v0

    invoke-virtual {v0}, Ldl;->a()Lef;

    move-result-object v0

    return-object v0
.end method

.method final d()Ldl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldl",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ldy;

    iget-object v1, p0, Lea$a;->a:Lea;

    invoke-static {v1}, Lea;->a(Lea;)[Ldn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ldy;-><init>(Ldj;[Ljava/lang/Object;)V

    return-object v0
.end method

.method final e()Ldm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lea$a;->a:Lea;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lea$a;->b()Ldl;

    move-result-object v0

    invoke-virtual {v0}, Ldl;->a()Lef;

    move-result-object v0

    return-object v0
.end method
