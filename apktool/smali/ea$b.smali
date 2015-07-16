.class final Lea$b;
.super Ldn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldn",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final c:Ldn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldn",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldn;Ldn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldn",
            "<TK;TV;>;",
            "Ldn",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ldn;-><init>(Ldn;)V

    .line 118
    iput-object p2, p0, Lea$b;->c:Ldn;

    .line 119
    return-void
.end method


# virtual methods
.method final a()Ldn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldn",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lea$b;->c:Ldn;

    return-object v0
.end method
