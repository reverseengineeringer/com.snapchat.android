.class abstract Ldn;
.super Ldk;
.source "SourceFile"


# annotations
.annotation build Lce;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldk",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ldn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldn",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Ldn;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ldn;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ldk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ldk;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-static {p1, p2}, Lcx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method abstract a()Ldn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldn",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
